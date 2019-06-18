//
//  backgroundColor.swift
//  SmartTimer
//
//  Created by Andrew on 08.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI


struct backgroundColor : View {
    var body: some View {
      ZStack {
        
        
        Group {
          Rectangle().edgesIgnoringSafeArea(.all)
          //Image("zombie")
          }
          
          .blur(radius: 20)
          .foregroundColor(Color.init(hue: 0.5583, saturation: 0.96, brightness: 0.53))
        Group {
          Rectangle()
            .opacity(0.5)
            .foregroundColor(Color.gray)
          .edgesIgnoringSafeArea(.all)
          }
          //.blur(radius: 900, opaque: false)
        
        
        
      }
      
    }
}

#if DEBUG
struct backgroundColor_Previews : PreviewProvider {
    static var previews: some View {
        backgroundColor()
    }
}
#endif
