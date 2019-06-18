//
//  LoginFirebase.swift
//  SmartTimer
//
//  Created by Andrew on 17.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import SwiftUI



class LoginFirebase {
  
  @State var isLogined = false
  @State var isSignedUp = false
  
  
  func loginViaEmail(email: String, password: String) {
    Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
      if(error != nil) {
        print("Failed to connect")
        
      } else {
        print("Successfull to login")
        self.isLogined = true
      }
    }
  }
  
  func signUpViaEmail(email: String, password: String) {
    Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
      if(error != nil) {
        print("Failed to connect")
       
      } else {
        print("Successfull to create user")
        self.isSignedUp = true
      }
    }
  }
}
