//
//  CommentsViewController.swift
//  SunWorld
//
//  Created by Aigerim on 8/24/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class CommentsViewController: UITableViewController {
    
    var postId: String?
    var comments = [Comment]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = #imageLiteral(resourceName: "plus")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(handleNewComment))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: self, action: #selector(handleCancel))
        
        tableView.register(PostCell.self, forCellReuseIdentifier: PostCell.cellIdentifier)
        tableView.register(CommentCell.self, forCellReuseIdentifier: CommentCell.cellIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        downloadComments()
        
    }
    
    func handleCancel(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        view.window!.layer.add(transition, forKey: kCATransition)
        self.dismiss(animated: false, completion: nil)
    }
    
    func handleNewComment(){
        self.present(NewCommentController(), animated: true, completion: nil)
    }
    
    func downloadComments(){
        Comment.getComments { (comments, error) in
            if let _error = error {
                print(_error.localizedDescription)
                return
            }
            guard let comments = comments else { return }
            self.comments = comments
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //check for post id:
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.cellIdentifier, for: indexPath) as! PostCell
        
        
//        cell.nameLabel.text = comments[indexPath.section].author
        cell.profileImageView.image = #imageLiteral(resourceName: "male")
        
        //WHYYY url is NIIIL like a riiiiveeer?
////        if let profileImageUrl = comments[indexPath.section].userProfileImageUrl {
//            cell.profileImageView.loadImageUsingCacheWithUrlString(profileImageUrl)
//            print(profileImageUrl)
//        }
        
//        cell.postView.text = comments[indexPath.section].text
        return cell
        
        
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return comments.count + 2
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //check for post height
        if indexPath.section == 0 {
            return 100
        }
        
//        let commentText = comments[indexPath.section - 1].text //-1
        return 150//PostCell.calculateCellHeight(for: commentText as! NSString)
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        
        return 10
    }
    
    
    
}

