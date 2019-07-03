//
//  CommentCell.swift
//  SunWorld
//
//  Created by Aigerim on 8/24/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//
import Foundation
import UIKit

class CommentCell: UITableViewCell {
    
    static let cellIdentifier = "CommentCell"
    static let profileImageViewHeight: CGFloat = 50
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
    
    func setupSubviews() {
        addSubview(nameLabel)
        addSubview(profileImageView)
        addSubview(postView)
        setupConstraints()
    }
    
    func setupConstraints() {
        
        profileImageView.leftAnchor.constraint(equalTo: self.rightAnchor, constant: 8).isActive = true
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: CommentCell.profileImageViewHeight).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: CommentCell.profileImageViewHeight).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 12)
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        postView.leftAnchor.constraint(equalTo: profileImageView.leftAnchor, constant: 0).isActive = true
        postView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        postView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true
    }
    
    
    class func calculateCellHeight(for text: NSString) -> CGFloat {
        
        let textBoundedWidth = UIScreen.main.bounds.width - 8 - 12
        let textSize = CGSize(width: textBoundedWidth, height: CGFloat.greatestFiniteMagnitude)
        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 16)]
        let textRect = text.boundingRect(with: textSize, options: options, attributes: attributes, context: nil)
        
        return textRect.height + nameLabelHeight + 10 * 3 + 8 * 3
    }
    
    
    
    
}
