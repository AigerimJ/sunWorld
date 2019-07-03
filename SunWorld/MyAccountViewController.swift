//
//  MyAccountViewController.swift
//  SunWorld
//
//  Created by Aigerim on 09.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class MyAccountViewController: UIViewController {
    
<<<<<<< HEAD
    var user: User?
    
=======

    var user: User?

>>>>>>> 709af5596380714c95f70c131124c9c363840824
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 5
        label.backgroundColor = .clear
        label.font = UIFont(name: "Noteworthy", size: 45)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 60/255, green: 49/255, blue: 56/255, alpha: 100)
        return label
    }()
    
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
<<<<<<< HEAD
        imageView.layer.cornerRadius = 50
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
=======
        imageView.layer.cornerRadius = 24
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
>>>>>>> 709af5596380714c95f70c131124c9c363840824
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
        self.view.reloadInputViews()
        self.loadView()
        //        Post.getPosts { (posts, error) in
        //            if let _error = error {
        //                print(_error.localizedDescription)
        //                return
        //            }
        //            guard let posts = posts else { return }
        //
        //        }
        
        
        //setUser:
        
        guard let uid = Auth.auth().currentUser?.uid else {
            //for some reason uid = nil
            return
        }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            if let dictionary = snapshot.value as? [String: AnyObject] {
                //                self.navigationItem.title = dictionary["name"] as? String
                
                let user = User(dictionary: dictionary)
                self.setupUser(user)
            }
            
        }, withCancel: nil)
        
        view.addSubview(usernameLabel)
        view.addSubview(profileImageView)
        
        
        
        
        view.backgroundColor = .gray
    }
    
    
    
    
    func setupUser(_ user: User) {
        
        if let profileImageUrl = user.profileImageUrl {
            profileImageView.loadImageUsingCacheWithUrlString(profileImageUrl)
        }
        
        usernameLabel.text =  user.name
        usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: usernameLabel.centerYAnchor, constant: -150).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    //    func handleLogout() {
    //
    //        do {
    //            try FIRAuth.auth()?.signOut()
    //        } catch let logoutError {
    //            print(logoutError)
    //        }
    //
    //        let loginController = LoginController()
    //        loginController.messagesController = self
    //        present(loginController, animated: true, completion: nil)
    //    }
=======
        
        if let profileImageUrl = user?.profileImageUrl {
            profileImageView.loadImageUsingCacheWithUrlString(profileImageUrl)
        }
        
        view.addSubview(usernameLabel)
        view.addSubview(profileImageView)
        
        usernameLabel.text = FIRAuth.auth()?.currentUser?.email
        
        usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: usernameLabel.centerYAnchor, constant: 40).isActive = true
        

        
        view.backgroundColor = .gray
    }
    
>>>>>>> 709af5596380714c95f70c131124c9c363840824
    
    
}
