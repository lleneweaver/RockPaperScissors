//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by  on 4/25/22.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var paperImage: UIImageView!
    @IBOutlet weak var scissorImage: UIImageView!
    @IBOutlet weak var winLoseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      //  func random ()
      //  {
      //       Int(rockImage) = 1
      //      Int(paperImage) = 2
      //      Int(scissorImage) = 3
     //   }

        
        rockImage.isUserInteractionEnabled = true
        paperImage.isUserInteractionEnabled = true
        scissorImage.isUserInteractionEnabled = true
        
    
    }
    @IBAction func didTapRockImage(_ sender: UITapGestureRecognizer)
    {
        playerImage.image = UIImage (named: "rock")
    }
    @IBAction func didTapPaperImage(_ sender: UITapGestureRecognizer)
    {
        playerImage.image = UIImage (named: "paper")
    }
    @IBAction func didTapScissorImage(_ sender: UITapGestureRecognizer)
    {
        playerImage.image = UIImage (named: "scissor")
    }
    func clearScreen()
    {
        playerImage.image = UIImage (named: "")
        computerImage.image = UIImage (named: "")
        winLoseLabel.text = ""
    }
    
    @IBAction func shootButtonPressed(_ sender: UIButton)
    {
    clearScreen()
    var random = arc4random_uniform(3) //returns 0 to 2 randomly
        switch random
        {
        case 0:
        computerImage.image = UIImage (named: "rock")
        case 1:
        computerImage.image = UIImage (named: "paper")
        default:
        computerImage.image = UIImage (named: "scissor")
        }
        if playerImage.image == UIImage (named: "rock") && computerImage.image == UIImage (named: "scissor") || playerImage.image == UIImage (named: "scissor") && computerImage.image == UIImage (named: "paper") || playerImage.image == UIImage (named: "paper") && computerImage.image == UIImage (named: "rock")
        {
            winLoseLabel.text = "🎉 You Won! 🎉"
        }
        else
        {
            winLoseLabel.text = "🤕 You Lost 🤕"
        }
        
    }
    
}















