//
//  TimerIntegratedController.swift
//  SmartTimer
//
//  Created by Andrew on 18.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI

struct TimerIntegratedController : UIViewControllerRepresentable {
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<TimerIntegratedController>) -> TimerViewController {
    return TimerViewController()
  }
  
  func updateUIViewController(_ uiViewController: TimerViewController, context: UIViewControllerRepresentableContext<TimerIntegratedController>) {
    
  }
}


#if DEBUG
struct TimerIntegratedController_Previews : PreviewProvider {
    static var previews: some View {
        TimerIntegratedController()
    }
}
#endif
