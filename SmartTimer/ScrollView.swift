//
//  ScrollView.swift
//  SmartTimer
//
//  Created by Andrew on 14.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import UIKit

struct ScrollView : UIViewRepresentable {
  func makeUIView(context: UIViewRepresentableContext<ScrollView>) -> UIScrollView {
    UIScrollView()
  }
  
  func updateUIView(_ uiView: UIScrollView, context: UIViewRepresentableContext<ScrollView>) {
    
    uiView.backgroundColor = UIColor.clear
    uiView.alwaysBounceVertical = true
    uiView.flashScrollIndicators()
    
  }
  
}

#if DEBUG
struct ScrollView_Previews : PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
#endif
