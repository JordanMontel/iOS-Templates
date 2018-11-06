//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import Alamofire

enum ___FILEBASENAMEASIDENTIFIER___: URLRequestConvertible {
    
    // Configure Headers
    static let headers: HTTPHeaders = [
        "Content-Type" : "application/json",
        "charset" : "utf-8"
    ]
    
    // Version
    static let version = ConstantsWebservices.WSAPIVersion
    
    // Base URL
    static let baseURLString = ConstantsWebservices.WSBaseURL + "/" + version
    
    // Retrieve method and data
    case post(path: String, parameters: Parameters)
    case get(path: String, parameters: Parameters)
    case put(path: String, parameters: Parameters)
    case delete(path: String, parameters: Parameters)
    
    // Retrieve request method
    var method: HTTPMethod {
        switch self {
        case .post:
            return .post
        case .get:
            return .get
        case .put:
            return .put
        case .delete:
            return .delete
        }
    }
    
    // Retrieve request path
    var path: String {
        switch self {
        case .post(let path, _), .get(let path, _), .put(let path, _), .delete(let path, _):
            return path
        }
    }
    
    // MARK: URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        
        // Build URL
        let tempUrl = try RESTClient.baseURLString.asURL()
        let url: URL = tempUrl.appendingPathComponent(path)

        // Build URLRequest
        var urlRequest: URLRequest!
        urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = method.rawValue
        urlRequest.allHTTPHeaderFields = RESTClient.headers
        
        switch self {
        case .post(_, let parameters),
             .put(_, let parameters):
            
            // JSON Body
            let jsonBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonBody
            
        case .get(_, let parameters),
             .delete(_, let parameters):
            
            // Encode URL
            urlRequest = try URLEncoding.default.encode(urlRequest, with: parameters)
        }
        
        // Return URLRequest
        return urlRequest
    }
}
