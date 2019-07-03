//
//  Message.swift
//  SunWorld
//
//  Created by Aigerim on 11.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Message: NSObject {
    
    var fromId: String?
    var text: String?
    var timestamp: NSNumber?
    var toId: String?
    var imageUrl: String?
    var videoUrl: String?
    var imageWidth: NSNumber?
    var imageHeight: NSNumber?
    
    init(dictionary: [String: Any]) {
        self.fromId = dictionary["fromId"] as? String
        self.text = dictionary["text"] as? String
        self.toId = dictionary["toId"] as? String
        self.timestamp = dictionary["timestamp"] as? NSNumber
        self.imageUrl = dictionary["imageUrl"] as? String
        self.videoUrl = dictionary["videoUrl"] as? String
<<<<<<< HEAD
=======
        
>>>>>>> 709af5596380714c95f70c131124c9c363840824
        self.imageWidth = dictionary["imageWidth"] as? NSNumber
        self.imageHeight = dictionary["imageHeight"] as? NSNumber
    }
    
    func chatPartnerId() -> String? {
<<<<<<< HEAD
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
=======
        return fromId == FIRAuth.auth()?.currentUser?.uid ? toId : fromId
>>>>>>> 709af5596380714c95f70c131124c9c363840824
    }
    
}
