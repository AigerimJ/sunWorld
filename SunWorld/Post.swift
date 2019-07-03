//
//  Post.swift
//  SunWorld
//
//  Created by Aigerim on 20.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class Post: NSObject {
    
    var id: String!
    var text: String?
    var author: String?
    var userProfileImageUrl: String?
    var type: String?
    var timestamp: NSNumber?
    
    static let ref = Database.database().reference().child("posts")
    
    init(dictionary: [String: AnyObject] = [String: AnyObject]()) {
        self.text = dictionary["text"] as? String
        self.author = dictionary["author"] as? String
        self.type = dictionary["type"] as? String
        self.userProfileImageUrl = dictionary["userProfileImageUrl"] as? String
        self.timestamp = dictionary["timestamp"] as? NSNumber
    }
    
    static func getPosts(completion: @escaping ([Post]?, Error?) -> () ) {
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            var posts = [Post]()
            
            if let items = (snapshot.value as? [String: [String: AnyObject]]) {
                for item in items {
                    let post = Post(dictionary: item.value)
                    post.id = item.key
                    posts.append(post)
                }
            }
            completion(posts, nil)
        }, withCancel: { (error) in
            completion(nil, error)
        })
    }
    
    
    func savePost(){
        var properties = [String: Any]()
        
        if let text = text {
            properties.updateValue(text, forKey: "text")
        }
        
        if let author = author {
            properties.updateValue(author, forKey: "author")
        }
        
        if let userProfileImageUrl = userProfileImageUrl {
            properties.updateValue(userProfileImageUrl, forKey: "userProfileImageUrl")
        }
        
        if let type = type {
            properties.updateValue(type, forKey: "type")
        }
        
        if let timestamp = timestamp {
            properties.updateValue(timestamp, forKey: "timestamp")
        }
        
        guard !properties.isEmpty else { return }
        Post.ref.childByAutoId().setValue(properties) { (error, ref) in
            print(error?.localizedDescription)
        }
    }

    
    
    
}
