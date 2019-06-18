//
//  Graph.swift
//  SmartTimer
//
//  Created by Andrew on 10.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import UIKit
import MBCircularProgressBar

struct Graph : UIViewRepresentable {

  func makeUIView(context: UIViewRepresentableContext<Graph>) -> MBCircularProgressBarView {
      MBCircularProgressBarView()

  }
  
  
  func updateUIView(_ uiView: MBCircularProgressBarView, context: UIViewRepresentableContext<Graph>) {
    uiView.fontColor = UIColor.blue
    uiView.showValueString = true
    uiView.backgroundColor = UIColor.clear
    uiView.progressColor = UIColor.blue
    uiView.progressStrokeColor = UIColor.blue
    //uiView.value = 14
    
    
  }
  
  
  
  
}

#if DEBUG
struct Graph_Previews : PreviewProvider {
    static var previews: some View {
        Graph()
    }
}
#endif
