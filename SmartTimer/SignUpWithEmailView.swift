//
//  SignUpWithEmailView.swift
//  SmartTimer
//
//  Created by Andrew on 17.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI

struct SignUpWithEmailView : View {
  @State var login = ""
  @State var password = ""
  @State var userName = ""
  @State var showAlert = false
  var loginFirebase = LoginFirebase()
  
  var body: some View {
    
    NavigationView {
      
      VStack {
        
        Group {
          
          Image("zombie").resizable()
            .shadow(radius: 40)
            .clipShape(Circle())
            .frame(width:200, height:200)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
          
          }
          .offset(y:-100)
          .shadow(color: Color.gray, radius: 40, x: 25, y: 25)
        
        TextField($login, placeholder: Text("E-mail")){
          UIApplication.shared.keyWindow?.endEditing(true)
          }
          .padding(10.0)
          .background(Color.white)
          .cornerRadius(10)
          .shadow(radius: 3)
        
        TextField($userName, placeholder: Text("User name")){
          UIApplication.shared.keyWindow?.endEditing(true)
          }
          .padding(10.0)
          .background(Color.white)
          .cornerRadius(10)
          .shadow(radius: 3)
        
        TextField($password, placeholder: Text("Password")){
          UIApplication.shared.keyWindow?.endEditing(true)
          }
          .padding(10.0)
          .background(Color.white)
          .cornerRadius(10)
          .shadow(radius: 3)
        
        
         /* Button(action: {
            self.loginFirebase.signUpViaEmail(email: self.login, password: self.password)
            
            
          }) {
            Text("Sign Up")
              .color(.white)
              .padding(10)
              .background(Color.blue)
              .cornerRadius(5)
              .shadow(radius: 5)
          }*/
          
          PresentationButton(Text("Sign Up")
            .color(.white)
            .padding(10)
            .background(Color.blue)
            .cornerRadius(5)
            .shadow(radius: 5), destination: UserDashboardView()) {
            self.loginFirebase.signUpViaEmail(email: self.login, password: self.password)
             // if !self.loginFirebase.isSignedUp {
                //self.showAlert = true
              }
            
         /* NavigationButton(destination: UserDashboardView()) {
            Text("Start")
              .color(.white)
              .padding(10)
              .background(Color.blue)
              .cornerRadius(5)
              .shadow(radius: 5)
          }*/
        
        }
        .padding(12)
        .compositingGroup()
        .shadow(radius: 5)
        .navigationBarTitle(Text("Sign Up"))
    }
    
  }
}

#if DEBUG
struct SignUpWithEmailView_Previews : PreviewProvider {
    static var previews: some View {
        SignUpWithEmailView()
    }
}
#endif
