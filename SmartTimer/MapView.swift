//
//  MapView.swift
//  SmartTimer
//
//  Created by Andrew on 07.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit
import CoreLocation
import AVFoundation

struct MapView : UIViewRepresentable {
  
  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
    
  }
  
  func updateUIView(_ view: MKMapView, context: Context) {
    
  
  
 
}
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
