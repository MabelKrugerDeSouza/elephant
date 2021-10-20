//
//  API.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

import Foundation

struct API {
    
    
    
    let baseURL = "https://elephant-api.herokuapp.com"
    
    /// Returns the URL string to endpoint: /elephants
    func setElephantsURL() -> String {
        return "\(self.baseURL)/\(EndPoints.elephants)"
    }
    func setRandomURL() -> String{
        return "\(self.baseURL) /\(EndPoints.elephants)/\(EndPoints.random)"
    }
    func setSexURL(sex: Sex) -> String{
        return "\(self.baseURL) /\(EndPoints.elephants)/\(EndPoints.sex)/\(sex)"
    }
    func setSpeciesURL() -> String{
        return "\(self.baseURL) /\(EndPoints.elephants)/\(EndPoints.species)"
    }
        
    
    //Alamofire
    /// Returns an array of Elefante -> If nil = []
    func getElephants(urlString: String, method: HTTPMethods, response: @escaping ([Elefante]) -> Void, errorR : @escaping (String) -> Void){
        
        var _ : [Elefante] = []
        
        let config: URLSessionConfiguration = .default
        let session: URLSession = URLSession(configuration: config)
        
        guard let url: URL = URL(string: urlString) else { return}
        
        var urlRequest: URLRequest = URLRequest(url: url)
        urlRequest.httpMethod = "\(method)"
        
        let task = session.dataTask(with: urlRequest, completionHandler: { (result, urlResponse, error) in
            
            var statusCode: Int = 0
            if let response = urlResponse as? HTTPURLResponse {
                statusCode = response.statusCode
                print(statusCode)
            }
            
            guard let data = result else {return}
            
            do {
                let decoder: JSONDecoder = JSONDecoder()
                let deconderData: [Elefante] = try decoder.decode([Elefante].self, from: data)
                response(deconderData)
               //response  = try JSONDecoder().decode([Elefante].self, from: data)
            } catch {
                errorR("Error")
            }
        })
        
        task.resume()
    }
}
