//
//  TimerViewController.swift
//  SmartTimer
//
//  Created by Andrew on 18.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
  
  var items: [UserItem] = []
  var user: User!
  var firebaseService = FirebaseService()
  
  var timer = Timer()
  var time = 0

  @IBOutlet weak var number: UILabel!
  
  @IBAction func playButton(_ sender: UIButton) {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.action), userInfo: nil, repeats: true)
  }
  @IBAction func stopButton(_ sender: UIButton) {
    timer.invalidate()
  }
  @IBAction func resetButton(_ sender: UIButton) {
    timer.invalidate()
    //var calories = firebaseService.getCallories(totTime: time, steps: 1000)
    firebaseService.pushUserStatistics(totTime: 170, cal: 112.0, steps: 1000)
    time = 0
  }
  
  @objc func action() {
    time += 1
    number.text = String(time)
  }
  override func viewDidLoad() {
        super.viewDidLoad()

    let leftMargin:CGFloat = 0
    let topMargin:CGFloat = 0
    let mapWidth:CGFloat = view.frame.size.width
    let mapHeight:CGFloat = 300
    
    self.view.frame = CGRect(x: leftMargin, y: topMargin, width: mapWidth, height: mapHeight)
    
    //var calories = firebaseService.getCallories(totTime: 170, steps: 1000)
    firebaseService.pushUserStatistics(totTime: 170, cal: 112.0, steps: 1000)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
