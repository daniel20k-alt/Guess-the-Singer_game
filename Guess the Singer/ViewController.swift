//
//  ViewController.swift
//  Guess the Singer
//
//  Created by DDDD on 25/01/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var singers = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singers += ["drake", "ed_sheeran", "eminem", "james_blunt", "jay_sean", "lil_wayne", "maroon_5", "selena_gomez", "taylor_swift"]
        
        // setting the borderWidth of the tables containing the Singer pictures
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        // setting the borderColor of the tables containing the Singer pictures, cgColor added in order for such to understand it, since it belongs to another CA layer that does not recognize what a color is
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion() {

        singers.shuffle() // this shuffles the array, and its going to show each time new singers on the first 3 positions
        correctAnswer = Int.random(in: 0...2) //

        button1.setImage(UIImage(named: singers[0]), for: .normal)
        button2.setImage(UIImage(named: singers[1]), for: .normal)
        button3.setImage(UIImage(named: singers[2]), for: .normal)
        
        // setting the title up on the top
        title = singers[correctAnswer].uppercased()
        

    }
}

