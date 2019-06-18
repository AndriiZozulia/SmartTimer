//
//  TimerData.swift
//  SmartTimer
//
//  Created by Andrew on 18.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class TimerData {
  
  @State var time = 0
  var timer = Timer()
  
  func startAction() {
    timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (<#Timer#>) in
      <#code#>
    })
  }
}
