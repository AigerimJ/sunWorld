//
//  ViewController.swift
//  SunWorld
//
//  Created by Aigerim on 04.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import UIKit

class FeedController: UITableViewController {

    lazy var inputTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter message..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self as? UITextFieldDelegate
        return textField
    }()
    
    var sendButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send", for: .normal)
        button.addTarget(self, action: #selector(sendPost), for: .touchUpInside)
        return button
    }()
    
    func sendPost(){
        
        
        
    }

    var posts = ["Привет................................................Heyeyey", "Как дела?", "My eyes..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(inputTextField)
        view.addSubview(sendButton)
        
        
        tableView.register(PostCell.self, forCellReuseIdentifier: PostCell.cellIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        setupViews()

    }
    
    
    func setupViews(){
        
        inputTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        inputTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        inputTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        inputTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true

        sendButton.leftAnchor.constraint(equalTo: inputTextField.rightAnchor, constant: 0).isActive = true
        sendButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        sendButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        sendButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
    
        tableView.topAnchor.constraint(equalTo: inputTextField.bottomAnchor, constant: -40).isActive = true
        tableView.leftAnchor.constraint(equalTo: inputTextField.leftAnchor, constant: 0).isActive = true

        

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.cellIdentifier, for: indexPath) as! PostCell
        cell.nameLabel.text = "NameLabel"
//        cell.topAnchor.constraint(equalTo: inputTextField.bottomAnchor, constant: 0).isActive = true
        cell.postLabel.text = posts[indexPath.section]
        cell.profileImageView.image = #imageLiteral(resourceName: "user.png")
        return cell
    }
    
    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return posts.count
    }


    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }

    

}

