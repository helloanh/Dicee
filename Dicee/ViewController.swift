//
//  ViewController.swift
//  Dicee
//
//  Created by akh on 1/13/19.
//  Copyright © 2019 Anh K. Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

   @IBOutlet weak var diceImageView1: UIImageView!
   @IBOutlet weak var diceImageView2: UIImageView!

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      updateDiceImages()
   }

   @IBAction func rollButtonPress(_ sender: UIButton) {
      updateDiceImages()
   }

   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
      updateDiceImages()
   }
   func updateDiceImages() {
      diceImageView1.image = UIImage(named: diceArray.randomElement()!)
      diceImageView2.image = UIImage(named: diceArray.randomElement()!)
   }
}

