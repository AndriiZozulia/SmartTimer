//
//  TimerView.swift
//  SmartTimer
//
//  Created by Andrew on 16.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import Firebase

struct TimerView : View {
  
    var body: some View {
      //NavigationView {
      VStack {
          MapViewIntegratedController()
          .padding(.bottom, 20.0)
          .frame(width: 420, height: 300, alignment: .center)
        
          
         TimerIntegratedController()
      }
    }
  
  
      
}

#if DEBUG
struct TimerView_Previews : PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
#endif
