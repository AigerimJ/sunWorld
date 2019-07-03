//
//  ViewController.swift
//  SunWorld
//
//  Created by Aigerim on 04.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import Firebase

class FeedController: UITableViewController {
    
    var posts = [Post]()
    
    var postsDictionary = [String: Post]()
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = #imageLiteral(resourceName: "plus")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(handleNewMessage))
        
        tableView.register(PostCell.self, forCellReuseIdentifier: PostCell.cellIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        download()
    }
    
    func handleNewMessage(){
        self.present(NewPostController(), animated: true, completion: nil)
    }
    
    func download(){
        Post.getPosts { (posts, error) in
            if let _error = error {
                print(_error.localizedDescription)
                return
            }
            guard let posts = posts else { return }
            self.posts = posts
            self.tableView.reloadData()
        }
        
    }
    
    
    func handleReloadTable() {
        self.posts.sort(by: { (post1, post2) -> Bool in
            return (post1.timestamp?.int32Value)! > (post2.timestamp?.int32Value)!
        })
        DispatchQueue.main.async(execute: {
            self.tableView.reloadData()
        })
    }
    

=======

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
    
>>>>>>> 709af5596380714c95f70c131124c9c363840824
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
<<<<<<< HEAD
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.cellIdentifier, for: indexPath) as! PostCell
        cell.nameLabel.text = posts[indexPath.section].author
        cell.profileImageView.image = #imageLiteral(resourceName: "male")

        if let profileImageUrl = posts[indexPath.section].userProfileImageUrl {
            cell.profileImageView.loadImageUsingCacheWithUrlString(profileImageUrl)
        }
        
        cell.postView.text = posts[indexPath.section].text
        if posts[indexPath.section].type == "health" {
            cell.lineView.backgroundColor = .blue
        } else if posts[indexPath.section].type == "study" {
            cell.lineView.backgroundColor = .orange
        } else {
            cell.lineView.backgroundColor = .darkGray
        }
        
        let commentVC = CommentsViewController()
        commentVC.postId = posts[indexPath.section].id

//        var postId = posts[indexPath.section].id
        cell.commentButton.addTarget(self, action: #selector(openComments), for: UIControlEvents.touchUpInside)
        handleReloadTable()

        return cell
        
        
    }
    
    func openComments(){
        print("Opening comments...")
        self.present(CommentsViewController(), animated: true, completion: nil)
    }
=======

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.cellIdentifier, for: indexPath) as! PostCell
        cell.nameLabel.text = "NameLabel"
//        cell.topAnchor.constraint(equalTo: inputTextField.bottomAnchor, constant: 0).isActive = true
        cell.postLabel.text = posts[indexPath.section]
        cell.profileImageView.image = #imageLiteral(resourceName: "user.png")
        return cell
    }
    
    

>>>>>>> 709af5596380714c95f70c131124c9c363840824
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return posts.count
    }
<<<<<<< HEAD
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let postText = posts[indexPath.section].text //-1
        return PostCell.calculateCellHeight(for: postText as! NSString)
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    
    
=======


    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }

    

>>>>>>> 709af5596380714c95f70c131124c9c363840824
}

