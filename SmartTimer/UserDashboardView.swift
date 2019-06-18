//
//  UserDashboardView.swift
//  SmartTimer
//
//  Created by Andrew on 08.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct UserDashboardView : View {
  
  @State var userName = String(Auth.auth().currentUser?.email ?? "")
  
    var body: some View {
      
      NavigationView {

      ZStack {
        //backgroundColor()
        
    VStack(alignment: .leading) {
          
         Group {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Settings")
                }
          .padding(.leading, 300)
          Text(userName)
            .font(.largeTitle)
          
          Image("zombie")
            .resizable()
            .shadow(radius: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .frame(width: 130, height:130)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4).frame(width: 130, height: 130))
          
          PageView(arrayOfViews)
            
            .frame(width: 380.0, height: 200.0)
          }.offset(y: -20)
          
          Group {
          
          ScrollView(isScrollEnabled: true, alwaysBounceHorizontal: false, alwaysBounceVertical: true, showsHorizontalIndicator: false, showsVerticalIndicator: true, content: {
          
            VStack(alignment:.leading){
              HStack(alignment: .bottom, spacing: 220) { Text("Kallories").font(.title)
                
                  Text("1198").font(.system(size: 20))
              }.padding(.bottom, 5.0)
              HStack(alignment: .bottom) {
            Text("Total time").font(.title)
                Spacer()
                Text("1198").font(.system(size: 20))
              }.padding(.bottom, 5.0)
              HStack(alignment: .bottom) {
            Text("Steps")
              .font(.title)
                Spacer()
                Text("1198").font(.system(size: 20))
              }
            }
            }).frame(width: 380.0, height: 250.0)
          
          
          
          
         
            NavigationButton(destination: TimerView()) {
              Text("Start timer")
            }.frame(width: 50, height: 30, alignment: .center)
          
          
        
            }.offset(y:20)
          
          
    
        }
        
        
        
    }
      }
      
    }
}

#if DEBUG
struct UserDashboardView_Previews : PreviewProvider {
    static var previews: some View {
        UserDashboardView()
    }
}
#endif
