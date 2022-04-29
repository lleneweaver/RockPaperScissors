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
    
    let url = URL(string: "https://wrpsa.com/the-official-rules-of-rock-paper-scissors/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rockImage.layer.cornerRadius = rockImage.bounds.width / 2
        scissorImage.layer.cornerRadius = scissorImage.bounds.width / 2
        paperImage.layer.cornerRadius = paperImage.bounds.width / 2
        playerImage.layer.cornerRadius = playerImage.bounds.width / 2
        computerImage.layer.cornerRadius = computerImage.bounds.width / 2
        
        rockImage.isUserInteractionEnabled = true
        paperImage.isUserInteractionEnabled = true
        scissorImage.isUserInteractionEnabled = true
        
    }
    @IBAction func didTapRockImage(_ sender: UITapGestureRecognizer)
    {
        playerImage.image = UIImage (named: "rock")
        rockImage.layer.borderWidth = 5
        rockImage.layer.borderColor = UIColor.green.cgColor
        paperImage.layer.borderWidth = 0
        scissorImage.layer.borderWidth = 0
    }
    @IBAction func didTapPaperImage(_ sender: UITapGestureRecognizer)
    {
        playerImage.image = UIImage (named: "paper")
        paperImage.layer.borderWidth = 5
        paperImage.layer.borderColor = UIColor.green.cgColor
        rockImage.layer.borderWidth = 0
        scissorImage.layer.borderWidth = 0


    }
    @IBAction func didTapScissorImage(_ sender: UITapGestureRecognizer)
    {
        playerImage.image = UIImage (named: "scissor")
        scissorImage.layer.borderWidth = 5
        scissorImage.layer.borderColor = UIColor.green.cgColor
        paperImage.layer.borderWidth = 0
        rockImage.layer.borderWidth = 0

    }
    func clearScreen()
    {
        rockImage.layer.borderWidth = 0
        paperImage.layer.borderWidth = 0
        scissorImage.layer.borderWidth = 0

    }
    
    @IBAction func shootButtonPressed(_ sender: UIButton)
    {
        
        clearScreen()
        let random = arc4random_uniform(3)
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
        if playerImage.image == UIImage (named: "rock") && computerImage.image == UIImage (named: "rock") || playerImage.image == UIImage (named: "paper") && computerImage.image == UIImage (named: "paper") || playerImage.image == UIImage (named: "scissor") && computerImage.image == UIImage (named: "scissor")
        {
            winLoseLabel.text = "🔄 Draw 🔄"
        }
        
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton)
    {
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    
    
}

