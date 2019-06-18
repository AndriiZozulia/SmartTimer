//
//  StartUpViewController.swift
//  SmartTimer
//
//  Created by Andrew on 18.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import UIKit
import Firebase
import SwiftUI

class StartUpViewController: UIViewController {
  let loginToList = "LoginToList"
  
  @IBOutlet weak var passwordField: UITextField!
  @IBOutlet weak var emailField: UITextField!
  
  @IBAction func loginButton(_ sender: AnyObject) {
    guard
      let email = emailField.text,
      let password = passwordField.text,
      email.count > 0,
      password.count > 0
      else {
        return
    }
    
    Auth.auth().signIn(withEmail: email, password: password) { user, error in
      if let error = error, user == nil {
        let alert = UIAlertController(title: "Sign In Failed",
                                      message: error.localizedDescription,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        self.present(alert, animated: true, completion: nil)
      }
      let userDashView = UserDashboardView()
      let host = UIHostingController(rootView: userDashView)
     // self.navigationController?.pushViewController(host, animated: true)
      self.present(host, animated: true, completion: nil)
    }
  }
  @IBAction func signUpButton(_ sender: AnyObject) {
    let alert = UIAlertController(title: "Register",
                                  message: "Register",
                                  preferredStyle: .alert)
    
    let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
      
      let emailField = alert.textFields![0]
      let passwordField = alert.textFields![1]
      
      Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) { user, error in
        if error == nil {
          Auth.auth().signIn(withEmail: self.emailField.text!,
                             password: self.passwordField.text!)
        }
      }
    }
    
    let cancelAction = UIAlertAction(title: "Cancel",
                                     style: .cancel)
    
    alert.addTextField { textEmail in
      textEmail.placeholder = "Enter your email"
    }
    
    alert.addTextField { textPassword in
      textPassword.isSecureTextEntry = true
      textPassword.placeholder = "Enter your password"
    }
    
    alert.addAction(saveAction)
    alert.addAction(cancelAction)
    
    present(alert, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

    Auth.auth().addStateDidChangeListener() { auth, user in
      if user != nil {
        let userDashView = UserDashboardView()
        let host = UIHostingController(rootView: userDashView)
         self.present(host, animated: true, completion: nil)
        self.emailField.text = nil
        self.passwordField.text = nil
      }
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension StartUpViewController: UITextFieldDelegate {
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField == emailField {
      passwordField.becomeFirstResponder()
    }
    if textField == passwordField {
      textField.resignFirstResponder()
    }
    return true
  }
}

