//
//  File.swift
//
//
//  Created by Engin Gülek on 9.04.2025.
//

import Foundation
import Alamofire

protocol TargetType {
    var baseURL: String {get}
    var path: String {get}
    var method: AlamofireMethod {get}
    var requestType: RequestType {get}
    var headers: [String: String]? {get}
}

enum AlamofireMethod: String {
    case GET
    case PUT
    case POST
    case DELETE
    
}

enum RequestType {
    case requestPlain
    
}
