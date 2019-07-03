//
//  PostC.swift
//  SunWorld
//
//  Created by Aigerim on 8/23/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit

class PostCell: UITableViewCell {
    
    static let cellIdentifier = "PostCell"
    static let profileImageViewHeight: CGFloat = 50
    static let subPostViewHeight: CGFloat = 40
    static let nameLabelHeight: CGFloat = 50
    static let defaultOffset: CGFloat = 8
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Variables
    var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 24
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    var nameLabel: UILabel = {
        let nL = UILabel()
        nL.translatesAutoresizingMaskIntoConstraints = false
        nL.backgroundColor = .clear
        return nL
    }()
    
    var postView: UITextView = {
        let pV = UITextView()
        pV.translatesAutoresizingMaskIntoConstraints = false
        pV.isEditable = false
        pV.isScrollEnabled = false
        pV.font = UIFont.systemFont(ofSize: 16)
        pV.backgroundColor = .clear
        return pV
    }()
    
    lazy var subPostView: UIView = {
        let subPostView = UIView()
        subPostView.translatesAutoresizingMaskIntoConstraints = false
        subPostView.backgroundColor = .clear
        return subPostView
    }()
    
    
    lazy var likeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
        button.setImage(#imageLiteral(resourceName: "myHeart"), for: .selected)
        button.addTarget(self, action: #selector(addLike), for: .touchUpInside)
        return button
    }()
    
    lazy var directButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "direct"), for: .normal)
        button.addTarget(self, action: #selector(direct), for: .touchUpInside)
        return button
    }()
    
    lazy var commentButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "comments"), for: .normal)
//        button.addTarget(self, action: #selector(comment), for: .touchUpInside)
        return button
    }()
    
    lazy var lineView: UIView = {
        var view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    //MARK: - Actions
    func addLike(){
        if likeButton.currentImage == #imageLiteral(resourceName: "heart") {
            likeButton.setImage(#imageLiteral(resourceName: "myHeart"), for: .normal)
            // likesCount++ update on FB
        } else{
            likeButton.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
            // likesCount-- update on FB
        }
    }
    
    
    
    func direct(_ user: User) {
        print("direct him/her!! - \(user)")
        let chatLogController = ChatLogController(collectionViewLayout: UICollectionViewFlowLayout())
        chatLogController.user = user
        //        navigationController?.pushViewController(chatLogController, animated: true)
    }
//    
//    func comment() {
//        print("open comments - muahhaahaa")
//    }
    
    
    func setupSubviews() {
        
        addSubview(nameLabel)
        addSubview(profileImageView)
        addSubview(postView)
        addSubview(lineView)
        addSubview(subPostView)
        
        setupConstraints()
        addSubPostViews()
        
    }
    
    func setupConstraints() {
        
        lineView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        lineView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: 12).isActive = true
        lineView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
        profileImageView.leftAnchor.constraint(equalTo: lineView.rightAnchor, constant: 8).isActive = true
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: PostCell.profileImageViewHeight).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: PostCell.profileImageViewHeight).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 12)
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        postView.leftAnchor.constraint(equalTo: profileImageView.leftAnchor, constant: 0).isActive = true
        postView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        postView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true
        
        subPostView.leftAnchor.constraint(equalTo: postView.leftAnchor, constant: 0).isActive = true
        subPostView.topAnchor.constraint(equalTo: postView.bottomAnchor, constant: 10).isActive = true
        subPostView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        subPostView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        subPostView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
    }
    
    func addSubPostViews() {
        subPostView.addSubview(commentButton)
        subPostView.addSubview(directButton)
        subPostView.addSubview(likeButton)
        
        likeButton.leftAnchor.constraint(equalTo: subPostView.leftAnchor, constant: 12).isActive = true
        likeButton.topAnchor.constraint(equalTo: subPostView.topAnchor, constant: 4).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        commentButton.leftAnchor.constraint(equalTo: likeButton.rightAnchor, constant: 15).isActive = true
        commentButton.topAnchor.constraint(equalTo: likeButton.topAnchor).isActive = true
        commentButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        commentButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        directButton.leftAnchor.constraint(equalTo: commentButton.rightAnchor, constant: 15).isActive = true
        directButton.topAnchor.constraint(equalTo: likeButton.topAnchor).isActive = true
        directButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        directButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
    
    class func calculateCellHeight(for text: NSString) -> CGFloat {
        
        let textBoundedWidth = UIScreen.main.bounds.width - 8 - 12
        let textSize = CGSize(width: textBoundedWidth, height: CGFloat.greatestFiniteMagnitude)
        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 16)]
        let textRect = text.boundingRect(with: textSize, options: options, attributes: attributes, context: nil)
        
        return textRect.height + subPostViewHeight + nameLabelHeight + 10 * 3 + 8 * 3
    }



    
}
