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
    

    var user: User?

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
        imageView.layer.cornerRadius = 24
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
    
    
    
}
