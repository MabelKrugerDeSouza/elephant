//
//  elefante.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

//import Foundation

//    "_id": "5cf1d0dbcd5e98f2540c4d1c",
//           "index": 3,
//           "name": "Balarama",
//           "affiliation": "Dasara",
//           "species": "Asian",
//           "sex": "Male",
//           "fictional": "false",
//           "dob": "1958",
//           "dod": "-",
//           "wikilink": "https://en.wikipedia.org/wiki/Balarama_(elephant)",
//           "image": "https://elephant-api.herokuapp.com/pictures/missing.jpg",
//           "note": "A lead elephant of the world-famous Mysore Dasara procession."

// Codable -> Encodable e Decodable -> Estrutura codable é os dois juntos (encodable e decodable), ela fazem a struct ser json e retornar um json. Mas ele pode dar muitos erros, porque tem que ser exatamente igual os dois, se mudar algo na struct e na api nao, vai dar crash.
// Decodable: Pega oJSON da API e transforma na classe ou struct
// Encodable: Pega a classe ou a struct e transforma em um JSON

struct Elefante: Codable{
    var _id          : String?
    var index        : Int?
    var name         : String?
    var affiliation  : String?
    var species      : String?
    var sex          : String?
    var fictional    : String?
    var dob          : String?
    var dod          : String?
    var wikilink     : String?
    var image        : String?
    var note         : String?
    
    init(_id          : String? = nil, // sobrescrever o init da struct, passando valores patroes 
         index        : Int? = nil,
         name         : String? = nil,
         affiliation  : String? = nil,
         species      : String? = nil,
         sex          : String? = nil,
         fictional    : String? = nil,
         dob          : String? = nil,
         dod          : String? = nil,
         wikilink     : String? = nil,
         image        : String? = nil,
         note         : String? = nil
    ){
        self._id            = _id
        self.index          = index
        self.name           = name
        self.affiliation    = affiliation
        self.species        = species
        self.sex            = sex
        self.fictional      = fictional
        self.dob            = dob
        self.dod            = dod
        self.wikilink       = wikilink
        self.image          = image
        self.note           = note
    }
    
    enum CodingKeys: String, CodingKey{ //Dicionario, usado para ver qual eu vou querer usar
        case _id            = "_id" // -> entre "" é o nome que vai no Json
        case index
        case name
        case affiliation
        case species
        case sex
        case fictional
        case dob
        case dod
        case wikilink
        case image
        case note
    }
}
