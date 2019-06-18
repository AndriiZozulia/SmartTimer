//
//  GraphKallories.swift
//  SmartTimer
//
//  Created by Andrew on 14.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import UIKit
import MBCircularProgressBar

struct GraphKallories : UIViewRepresentable {
  
  func makeUIView(context: UIViewRepresentableContext<GraphKallories>) -> MBCircularProgressBarView {
    MBCircularProgressBarView()
    
  }
  
  
  func updateUIView(_ uiView: MBCircularProgressBarView, context: UIViewRepresentableContext<GraphKallories>) {
    uiView.fontColor = UIColor.red
    uiView.showValueString = true
    uiView.backgroundColor = UIColor.clear
    uiView.progressColor = UIColor.red
    uiView.progressStrokeColor = UIColor.red
    uiView.value = 20
  }
  
  
  
  
}

#if DEBUG
struct GraphKallories_Previews : PreviewProvider {
  static var previews: some View {
    Graph()
  }
}
#endif
