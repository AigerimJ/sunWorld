//
//  Like.swift
//  SunWorld
//
//  Created by Aigerim on 20.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit

class Like: NSObject {
    
    var fromId: String?
    var postId: String?
    
    init(dictionary: [String: AnyObject]) {
        self.fromId = dictionary["fromId"] as? String
        self.postId = dictionary["postId"] as? String
    }
    
}
