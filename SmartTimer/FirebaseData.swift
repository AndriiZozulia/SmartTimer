//
//  FirebaseData.swift
//  SmartTimer
//
//  Created by Andrew on 18.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import Foundation
import Firebase

struct User {
  
  let uid: String
  let email: String
  
  init(authData: Firebase.User) {
    uid = authData.uid
    email = authData.email!
  }
  
  init(uid: String, email: String) {
    self.uid = uid
    self.email = email
  }
}

struct UserItem {
  
  let ref: DatabaseReference?
  let key: String
  let totalTime: Int
  let calories: Double
  var steps: Int
  
  init(totalTime: Int, calories: Double, steps: Int, key: String = "") {
    self.ref = nil
    self.key = key
    self.totalTime = totalTime
    self.calories = calories
    self.steps = steps
  }
  
  init?(snapshot: DataSnapshot) {
    guard
      let value = snapshot.value as? [String: AnyObject],
      let totalTime = value["totalTime"] as? Int,
      let calories = value["calories"] as? Double,
      let steps = value["steps"] as? Int else {
        return nil
    }
    
    self.ref = snapshot.ref
    self.key = snapshot.key
    self.totalTime = totalTime
    self.calories = calories
    self.steps = steps
  }
  
  func toAnyObject() -> Any {
    return [
      "totalTime": totalTime,
      "calories": calories,
      "steps": steps
    ]
  }
}





