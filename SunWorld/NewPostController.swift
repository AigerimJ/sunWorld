//
//  NewPostController.swift
//  SunWorld
//
//  Created by Aigerim on 18.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class NewPostController: UIViewController {
    
    var text: String?
    var selectedTheme: String?


    var inputTextView: UITextView = {
        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))
//        self.automaticallyAdjustsScrollViewInsets = false
//        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = .black
        textView.backgroundColor = UIColor.white
        textView.font = UIFont(name: "Noteworthy", size: 22)
        return textView
    }()
    
    lazy var lineView: UIView = {
        var view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let navBar: UINavigationBar = {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 360, height: 65))
        let navItem = UINavigationItem(title: "Select theme");
        let sendItem = UIBarButtonItem(title: "Send", style: .plain, target: self, action: #selector(handleSend))
        navItem.rightBarButtonItem = sendItem;
        navItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
        navBar.setItems([navItem], animated: false);
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
        return navBar
    }()
    
    //MARK:- Buttons
    let healthThemeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("health", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(healthThemeButtonPressed), for: .touchUpInside)
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.borderWidth = 1
        //        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont(name: "Noteworthy", size: 22)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let studyThemeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("study", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.addTarget(self, action: #selector(studyThemeButtonPressed), for: .touchUpInside)
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.borderWidth = 1
        //        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont(name: "Noteworthy", size: 22)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let otherThemeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("other", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(self, action: #selector(otherThemeButtonPressed), for: .touchUpInside)
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.borderWidth = 1
        //        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont(name: "Noteworthy", size: 22)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK:- Actions
    func healthThemeButtonPressed(){
        selectedTheme = "health"

        healthThemeButton.setTitleColor(.white, for: .normal)
        healthThemeButton.backgroundColor = .blue
        
        studyThemeButton.setTitleColor(.orange, for: .normal)
        studyThemeButton.backgroundColor = .clear
        
        otherThemeButton.setTitleColor(.gray, for: .normal)
        otherThemeButton.backgroundColor = .clear
        
    }
    
    func studyThemeButtonPressed(){
        selectedTheme = "study"

        studyThemeButton.setTitleColor(.white, for: .normal)
        studyThemeButton.backgroundColor = .orange
        
        healthThemeButton.setTitleColor(.blue, for: .normal)
        healthThemeButton.backgroundColor = .clear
        
        otherThemeButton.setTitleColor(.gray, for: .normal)
        otherThemeButton.backgroundColor = .clear
    }
    
    func otherThemeButtonPressed(){
        selectedTheme = "other"
//        userDefaults.set("other", forKey: "postTheme")

        studyThemeButton.setTitleColor(.orange, for: .normal)
        studyThemeButton.backgroundColor = .clear
        
        healthThemeButton.setTitleColor(.blue, for: .normal)
        healthThemeButton.backgroundColor = .clear
        
        otherThemeButton.setTitleColor(.white, for: .normal)
        otherThemeButton.backgroundColor = .gray
    }
    
    
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
        // guard let alert

        guard let uid = Auth.auth().currentUser?.uid else {
            //for some reason uid = nil
            return
        }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            if let dictionary = snapshot.value as? [String: AnyObject] {
                let user = User(dictionary: dictionary)
                self.savePost(user)
            }
            
        }, withCancel: nil)
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        
        self.present(CustomTabBarVC(), animated: false, completion: nil)
    }
    
    
    func savePost(_ user: User){
        let timestamp = Int(Date().timeIntervalSince1970)
        let post = Post()
        post.text = text
        post.type = selectedTheme
        post.author = user.name
        post.userProfileImageUrl = user.profileImageUrl
        post.timestamp = timestamp as NSNumber
        print(user.profileImageUrl ?? "nooothing\n")
        post.savePost()
    }
    
    func setupView(){
        
        [navBar, studyThemeButton, otherThemeButton, healthThemeButton, inputTextView, lineView].forEach {view.addSubview($0)}
        
        //x, y, width & height
        
        navBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navBar.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        healthThemeButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        healthThemeButton.topAnchor.constraint(equalTo: navBar.bottomAnchor).isActive = true
        healthThemeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        healthThemeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        studyThemeButton.leftAnchor.constraint(equalTo: healthThemeButton.rightAnchor).isActive = true
        studyThemeButton.topAnchor.constraint(equalTo: healthThemeButton.topAnchor).isActive = true
        studyThemeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        studyThemeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        otherThemeButton.leftAnchor.constraint(equalTo: studyThemeButton.rightAnchor).isActive = true
        otherThemeButton.topAnchor.constraint(equalTo: studyThemeButton.topAnchor).isActive = true
        otherThemeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        otherThemeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        

        lineView.topAnchor.constraint(equalTo: studyThemeButton.bottomAnchor).isActive = true
        lineView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        lineView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        lineView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        inputTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        inputTextView.topAnchor.constraint(equalTo: otherThemeButton.bottomAnchor, constant: 10).isActive = true
        inputTextView.heightAnchor.constraint(equalToConstant: view.frame.size.height - navBar.frame.size.height - otherThemeButton.frame.size.height).isActive = true
        inputTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
    }
    
    
}


