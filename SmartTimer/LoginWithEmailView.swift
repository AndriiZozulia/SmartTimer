//
//  LoginWithEmailView.swift
//  SmartTimer
//
//  Created by Andrew on 17.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI

struct LoginWithEmailView : View {
  @State var login = ""
  @State var password = ""
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
        
        TextField($password, placeholder: Text("Password")){
          UIApplication.shared.keyWindow?.endEditing(true)
      }
          .padding(10.0)
          .background(Color.white)
          .cornerRadius(10)
          .shadow(radius: 3)
        
       /* NavigationButton(destination: UserDashboardView()) {
          Text("Login")
            .color(.white)
            .padding(10)
            .background(Color.blue)
            .cornerRadius(5)
            .shadow(radius: 5)
        }*/
        
      HStack {
        Button(action: {
          self.loginFirebase.loginViaEmail(email: self.login, password: self.password)
          
        
        }) {
          Text("Login")
            .color(.white)
            .padding(10)
            .background(Color.blue)
            .cornerRadius(5)
            .shadow(radius: 5)
        }
        
        PresentationButton(Text("Login")
          .color(.white)
          .padding(10)
          .background(Color.blue)
          .cornerRadius(5)
          .shadow(radius: 5), destination: UserDashboardView()) {
            self.loginFirebase.loginViaEmail(email: self.login, password: self.password)
            if !self.loginFirebase.isLogined {
              self.showAlert = true
            }
          }.presentation($showAlert) {
            Alert(title: Text("Can't login"), message: Text("You've made a mistake"),
                  primaryButton: .default (Text("OK")) {
                    
              },
                  secondaryButton: .cancel()
            )
        }
        
       /* PresentationButton(destination: UserDashboardView()) {
          Text("Start")
            .color(.white)
            .padding(10)
            .background(Color.blue)
            .cornerRadius(5)
            .shadow(radius: 5)
        }*/
      }
        }
        .padding(12)
        .compositingGroup()
        .shadow(radius: 5)
        .navigationBarTitle(Text("Login"))
        
      
    }
    
  }
}

#if DEBUG
struct LoginWithEmailView_Previews : PreviewProvider {
    static var previews: some View {
        LoginWithEmailView()
    }
}
#endif
