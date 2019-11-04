//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
    }
    

    @IBAction func rollButtonPressed(_ sender: Any) {
        let images :[UIImage] = [#imageLiteral(resourceName: "DiceOne"),  #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        // this picks a random element from an array
        leftDiceImageView.image  = images.randomElement()
        // this picks a random image from 0 to 5 index
        rightDiceImageView.image = images[Int.random(in: 0...5)]
    }
    
}

