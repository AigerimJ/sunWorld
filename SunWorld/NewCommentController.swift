//
//  NewCommentController.swift
//  SunWorld
//
//  Created by Aigerim on 8/25/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.

import Foundation
import UIKit
import Firebase

class NewCommentController: UIViewController {
    
    var text: String?
    
    var inputTextView: UITextView = {
        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))
        textView.textAlignment = NSTextAlignment.justified
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = .black
        textView.backgroundColor = UIColor.white
        textView.font = UIFont(name: "Noteworthy", size: 22)
        return textView
    }()
    
    let navBar: UINavigationBar = {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 360, height: 65))
        let navItem = UINavigationItem(title: "Новый комментарий");
        let sendItem = UIBarButtonItem(title: "Отправить", style: .plain, target: self, action: #selector(handleSend))
        navItem.rightBarButtonItem = sendItem;
        navItem.leftBarButtonItem = UIBarButtonItem(title: "Отмена", style: .plain, target: self, action: #selector(handleCancel))
        navBar.setItems([navItem], animated: false);
        navBar.translatesAutoresizingMaskIntoConstraints = false
        return navBar
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupView()
    }
    
    func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    func handleSend() {
        text = inputTextView.text
        
        // check if a theme is selected
        // and text is not empty!
        //guard let alert
        
        guard let uid = Auth.auth().currentUser?.uid else {
            //for some reason uid = nil
            return
        }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            if let dictionary = snapshot.value as? [String: AnyObject] {
                let user = User(dictionary: dictionary)
                self.saveComment(user)
            }
            
        }, withCancel: nil)
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        
        self.present(CommentsViewController(), animated: false, completion: nil)
        
    }
    
    
    func saveComment(_ user: User){
        let timestamp = Int(Date().timeIntervalSince1970)
        let comment = Comment()
        comment.text = text
        comment.author = user.name
        comment.userProfileImageUrl = user.profileImageUrl
        comment.timestamp = timestamp as NSNumber
        comment.saveComment()
    }
    
    func setupView(){
        
        [navBar,inputTextView].forEach {view.addSubview($0)}
        
        
        //x, y, width & height
        
        navBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navBar.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        inputTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        inputTextView.topAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 10).isActive = true
        inputTextView.heightAnchor.constraint(equalToConstant: view.frame.size.height - navBar.frame.size.height).isActive = true
        inputTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
    }
    
    
}


