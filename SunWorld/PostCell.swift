//
//  PostCell.swift
//  SunWorld
//
//  Created by Aigerim on 04.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
     static let cellIdentifier = "PostCell"
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var profileImageView: UIImageView = {
        let iV = UIImageView()
        iV.translatesAutoresizingMaskIntoConstraints = false
        //        iV.image = UIImage(name)
        return iV
    }()
    
    var nameLabel: UILabel = {
        let nL = UILabel()
        nL.translatesAutoresizingMaskIntoConstraints = false
        return nL
    }()
    
    var postLabel: UILabel = {
        let pL = UILabel()
        pL.translatesAutoresizingMaskIntoConstraints = false
        return pL
    }()
    
    
    let firstImage = UIImage(named: "heart")! as UIImage
    let secondImage = UIImage(named: "myHeart")! as UIImage
    
    var likeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "heart"), for: .normal)
//        button.addTarget(self, action: #selector(addLike(likeButton)), for: .allTouchEvents)
        return button
    }()
    
    
    func addLike(button: UIButton){
//        if button.currentImage == UIImage(named: "heart"){
            button.setImage(secondImage, for: .normal)
//        } else{
//            button.setImage(UIImage(named: "heart"), for: .normal)
//        }
    }
    
    
    func setupViews() {
        addSubview(nameLabel)
        addSubview(profileImageView)
        addSubview(postLabel)
        addSubview(likeButton)
        
//        likeButton.addTarget(self, action: #selector(addLike(button: likeButton)), for: .touchUpInside)

        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 12)
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        postLabel.leftAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: 0).isActive = true
        postLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        postLabel.widthAnchor.constraint(equalTo: nameLabel.widthAnchor).isActive = true
        postLabel.bottomAnchor.constraint(equalTo: likeButton.topAnchor, constant: 10).isActive = true
        
        
        likeButton.leftAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: 0).isActive = true
//        likeButton.topAnchor.constraint(equalTo: postLabel.bottomAnchor, constant: 8).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 22).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 20).isActive = true

        likeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
    }
    
    class func calculateCellHeight(for text: NSString) -> CGFloat {
        
        let textBoundedWidth = UIScreen.main.bounds.width - profileImageView.height
        let textSize = CGSize(width: textBoundedWidth, height: <#T##CGFloat#>)
        
    }

}
