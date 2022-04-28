//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Interface Builder Outlet (referencias a imagen dado 1 y dado 2)
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //Accion del boton Roll
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let arrayDices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //Variables
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)
        
        diceImageView1.image = arrayDices[leftDiceNumber]
        diceImageView2.image = arrayDices[rightDiceNumber]
        
        //WHO            WHAT    VALUE
        //diceImageView1.image = #imageLiteral(resourceName: "DiceThree")
    }
    
}

