//
//  FirebaseService.swift
//  SmartTimer
//
//  Created by Andrew on 18.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import Foundation
import SwiftUI
import Firebase

struct FirebaseService {
  
  let rootRef = Database.database().reference()
  func pushUserStatistics(totTime: Int, cal: Double, steps: Int) {
     let userItem = UserItem(totalTime: totTime , calories: cal, steps: steps)
     let childRef = rootRef.child("user-statistic")
    
     let userItemRef = childRef.child("statistic")
     userItemRef.setValue(userItem.toAnyObject())
  }
  
  func getCallories(totTime: Int, steps: Int)->Double {
    var calories:Double = 0
    calories = Double(18 * (totTime/steps))
    return calories
  }
}

