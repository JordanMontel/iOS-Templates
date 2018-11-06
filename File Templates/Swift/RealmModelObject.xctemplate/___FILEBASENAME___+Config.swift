//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import SwiftyJSON
import RealmSwift

// JSON keys
let k___FILEBASENAMEASIDENTIFIER___ObjectId = "objectId"

extension ___FILEBASENAMEASIDENTIFIER___ {
    
    func configure(object: JSON) {
        
        // Realm declaration
        if let realm = try? Realm() {
            
            // Configure object
            self.objectId = object[k___FILEBASENAMEASIDENTIFIER___ObjectId].stringValue
            
            // Configure relationships
            
            // Create or update the object
            try? realm.write {
                realm.add(self, update: true)
            }
        }
    }
}
