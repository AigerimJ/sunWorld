//
//  User.swift
//  SunWorld
//
//  Created by Aigerim on 11.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit

class User: NSObject {
<<<<<<< HEAD
    
=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
    var id: String?
    var name: String?
    var email: String?
    var profileImageUrl: String?
<<<<<<< HEAD
    var userType: String?
    
    init(dictionary: [String: AnyObject]) {
        self.id = dictionary["id"] as? String
        self.name = dictionary["name"] as? String
        self.userType = dictionary["userType"] as? String
        self.email = dictionary["email"] as? String
        self.profileImageUrl = dictionary["profileImageUrl"] as? String
        
    }
    
    
=======
    init(dictionary: [String: AnyObject]) {
        self.id = dictionary["id"] as? String
        self.name = dictionary["name"] as? String
        self.email = dictionary["email"] as? String
        self.profileImageUrl = dictionary["profileImageUrl"] as? String
    }
>>>>>>> 709af5596380714c95f70c131124c9c363840824
}
