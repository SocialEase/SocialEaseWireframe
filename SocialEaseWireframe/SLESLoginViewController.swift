//
//  ViewController.swift
//  SocialEaseWireframe
//
//  Created by Amay Singhal on 10/14/15.
//  Copyright © 2015 ple. All rights reserved.
//

import UIKit
import Parse

class SLESLoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    var username: String? {
        return usernameTextField?.text
    }

    var password: String? {
        return passwordTextField?.text
    }

    var formParseUser: PFUser? {
        let user = PFUser()
        user.username = username
        user.password = password
        return user
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signupButtonTapped(sender: UIButton) {
        singupUser()
    }

    @IBAction func loginButtonTapped(sender: UIButton) {
        loginUser()
    }

    private func loginUser() {
        if let username = username, let passwd = password {
            PFUser.logInWithUsernameInBackground(username, password: passwd) { (user: PFUser?, error: NSError?) -> Void in
                if let _ = user {
                    // login user
                    self.performSegueWithIdentifier(SLESStoryBoard.ShowInitialSetupIdentifier, sender: self)
                }
            }
        }
        
    }

    // MARK: - Private helper functions
    private func singupUser() {

        formParseUser!.signUpInBackgroundWithBlock{ (status: Bool, error: NSError?) -> Void in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("User signed up successfully")
            }
        }
    
    }
}

