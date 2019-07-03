//
//  Comment.swift
//  SunWorld
//
//  Created by Aigerim on 20.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class Comment: NSObject {
    
    var text: String?
    var author: String?
    var userProfileImageUrl: String?
    var postId: String?
    var timestamp: NSNumber?
    
    static let ref = Database.database().reference().child("comments")
    
    init(dictionary: [String: AnyObject] = [String: AnyObject]()) {
        self.text = dictionary["text"] as? String
        self.author = dictionary["author"] as? String
        self.userProfileImageUrl = dictionary["userProfileImageUrl"] as? String
        self.postId = dictionary["postId"] as? String
        self.timestamp = dictionary["timeStamp"] as? NSNumber
    }
    
    static func getComments(completion: @escaping ([Comment]?, Error?) -> () ) {
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            var comments = [Comment]()
            
            if let items = (snapshot.value as? [String: [String: AnyObject]]) {
                for item in items {
                    let comment = Comment(dictionary: item.value)
                    comment.postId = item.key // id??
                    comments.append(comment)
                }
            }
            completion(comments, nil)
        }, withCancel: { (error) in
            completion(nil, error)
        })
    }
    
    func saveComment(){
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
        
        if let postId = postId {
            properties.updateValue(postId, forKey: "postId")
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
