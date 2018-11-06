//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class POST___FILEBASENAMEASIDENTIFIER___Request {
    
    // Path
    static let path = ""
    
    // Create request
    static func buildRequest(anID: String, parameters: [String: Any], completionHandler: @escaping ([Any]?, Error?, HTTPURLResponse?) -> ()) {

        // Build request
        Alamofire.request(RESTClient.post(path: path, parameters: parameters)).validate(statusCode: 200..<300).responseJSON { response in
            
            switch response.result {
            case .success(let value):
                
                // Retrieve JSON data
                let json = JSON(value)
                let finalJSON: JSON = json[ConstantsWebservices.kWSResults]
                
                // Build Results
                var results = [Any]()
                for (_, anObject) in finalJSON {
                    let ___FILEBASENAMEASIDENTIFIER___ = ___FILEBASENAMEASIDENTIFIER___()
                    ___FILEBASENAMEASIDENTIFIER___.configure(object: anObject)
                    results.append(___FILEBASENAMEASIDENTIFIER___)
                }
                
                // Completion Success
                completionHandler(results, nil, response.response)
                
            case .failure(let error):
                completionHandler(nil, error, response.response)
            }
        }
    }
}
