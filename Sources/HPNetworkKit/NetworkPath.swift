//
//  File.swift
//  
//
//  Created by Engin Gülek on 9.04.2025.
//

import Foundation

//MARK: NetworkPath
public enum NetworkPath{
    case characters
    case characterDetail(Int)
    
}

extension NetworkPath : TargetType {
    var baseURL: String {
        return Constants.baseUrl.rawValue
    }
    
    var path: String {
        switch self {
        case .characters:
            return  Constants.characters.rawValue
        case .characterDetail(let index):
            return  Constants.characters.rawValue + "?index=\(index)"
        }
    }
    
    var method: AlamofireMethod {
        switch self {
        default:
            return .GET
        }
    }
    
    var requestType: RequestType {
        switch self {
        default:
            return .requestPlain
            
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
    
    
}
