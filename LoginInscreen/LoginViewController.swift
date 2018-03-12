//
//  LoginViewController.swift
//  LoginInscreen
//
//  Created by Nick Reichard on 3/12/18.
//  Copyright © 2018 Nick Reichard. All rights reserved.
//

import UIKit

enum ButtonState {
    case selected
    case notSelected
}

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    // MARK: - Properties
    var buttonState: ButtonState = .notSelected
    
    // MARK: - Actions
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        updateViews()
    }
    
    func setUpUI() {
        // This function is used to match our Sketch Design
        headerImageView.image = #imageLiteral(resourceName: "2")
        headerImageView.contentMode = .scaleAspectFill
        profileImageView.image = #imageLiteral(resourceName: "Profile")
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.height / 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.borderWidth = 5
        
        // button UI
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        loginButton.backgroundColor = UIColor.primaryBlue
        loginButton.layer.borderColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        loginButton.layer.borderWidth = 2
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "Georgia", size: 15)
        
        lineView.backgroundColor = .red 
    }
    
    func updateViews() {
        
        switch buttonState {
    
        case .selected:
            buttonState = .notSelected
            loginButton.setTitle("Login", for: .normal)
        case .notSelected:
            buttonState = .selected
            loginButton.setTitle("Update", for: .normal)
        }
      

    }
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var headerImageView: UIImageView!
}
