//
//  SubPostCell.swift
//  SunWorld
//
//  Created by Aigerim on 04.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import UIKit
import Foundation

class textFieldCell: UITableViewCell {

    static let cellIdentifier = "textFieldCell"

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    lazy var inputTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter message..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self as? UITextFieldDelegate
        return textField
    }()
    
//    lazy var sendButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Send", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 18)
//        button.titleLabel?.textAlignment = .center
//        button.addTarget(self, action: #selector(sendPost), for: .touchUpInside)
//        return button
//    }()
//    
    func sendPost(){
        print("Send the pooost")
    }
    
    func setupView(){
        
        addSubview(inputTextField)
//        addSubview(sendButton)
//
//        sendButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
//        sendButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
//        sendButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        sendButton.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
        inputTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        inputTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        inputTextField.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        inputTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        
    }
    
}
