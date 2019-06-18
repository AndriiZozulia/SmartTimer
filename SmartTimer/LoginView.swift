//
//  LoginView.swift
//  SmartTimer
//
//  Created by Andrew on 07.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import Firebase

struct LoginView : View {
  var loginFirebase = LoginFirebase()
  @State var login: String = ""
  @State var password: String = ""
  var imageName = "zombie"
  
  var body: some View {
    
    NavigationView {
    
      VStack {
        
        //Group {
          
         // Image(imageName)
            /*.overlay(Circle().stroke(Color.gray, lineWidth: 4).frame(width: 200, height: 200))
            .frame(width:200, height:200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: 40)
            .resizable()*/

         // }
          //.shadow(radius: 40)
         // .offset(y: -80)
        
        
        
        
          
          
            TextField($login)
           
            
          
          
            TextField($password)
          
            
          
            
          
          
       
        
        VStack(alignment: .center) {
          
          
         
          //LoginFirebase.loginViaEmail(self.login,self.password)
        
          
          
          /* NavigationButton(destination: UserDashboardView() ,action: {
           
           
           
           }) {
           Group {
           Text("Start")
           .color(Color.white)
           .font(.title)
           }
           .padding(10)
           .background(Color.blue)
           
           }.clipShape(RoundedRectangle(cornerRadius: 5))*/
          
          Button(action: {self.loginFirebase.loginViaEmail(email:self.login, password:self.password)}) {
           
            Group {
              Text("Register")
                .underline()
              }
              .padding(10)
            
          }
          
          
        }
        
      }
    }
  
  }
  
 
}

#if DEBUG
struct LoginView_Previews : PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
#endif
