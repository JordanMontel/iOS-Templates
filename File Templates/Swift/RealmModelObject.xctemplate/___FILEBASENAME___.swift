//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import RealmSwift

class ___FILEBASENAMEASIDENTIFIER___: Object {
    
    // Properties
    dynamic var objectId: String = ""
    
    // Relationships
    
    // PrimaryKey
    override static func primaryKey() -> String? {
        return #keyPath(___FILEBASENAMEASIDENTIFIER___.objectId)
    }
}
