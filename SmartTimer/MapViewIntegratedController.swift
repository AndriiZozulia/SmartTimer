//
//  MapViewIntegratedController.swift
//  SmartTimer
//
//  Created by Andrew on 17.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI

struct MapViewIntegratedController : UIViewControllerRepresentable {
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<MapViewIntegratedController>) -> MapViewController {
    return MapViewController()
  }
  
  func updateUIViewController(_ uiViewController: MapViewController, context: UIViewControllerRepresentableContext<MapViewIntegratedController>) {
    
  }
}

#if DEBUG
struct MapViewIntegratedController_Previews : PreviewProvider {
    static var previews: some View {
        MapViewIntegratedController()
    }
}
#endif

