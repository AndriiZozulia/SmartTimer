//
//  StartUpView.swift
//  SmartTimer
//
//  Created by Andrew on 17.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI

struct StartUpView : View {
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
      
        VStack {
          
            HStack(alignment: .bottom) {
        
              NavigationButton(destination: LoginWithEmailView()) {
            
                Text("Login")
              }
              .padding(.trailing, 34.0)
          
              Image("zombie")
               .resizable()
               .clipShape(Circle())
               .frame(width:30, height:30)
            }
      
            HStack(alignment: .bottom) {
        
              NavigationButton(destination: SignUpWithEmailView()) {
            
                Text("Sign Up")
              }
              .padding(.trailing, 20.0)
          
              Image("zombie")
               .resizable()
               .clipShape(Circle())
               .frame(width:30, height:30)
         }
        }
      }
   }
  }
}

#if DEBUG
struct StartUpView_Previews : PreviewProvider {
    static var previews: some View {
        StartUpView()
    }
}
#endif
