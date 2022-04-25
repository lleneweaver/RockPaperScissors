//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by  on 4/25/22.
//

import UIKit

class ViewController: UIViewController {
    let move = Int.random(in: 1...3)
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var paperImage: UIImageView!
    @IBOutlet weak var scissorImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        func random ()
        {
             Int(rockImage) = 1
            Int(paperImage) = 2
            Int(scissorImage) = 3
        }
        
    }
    
}















