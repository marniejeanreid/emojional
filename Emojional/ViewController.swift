//
//  ViewController.swift
//  Emojional
//
//  Created by Marnie Reid on 5/12/19.
//  Copyright © 2019 Marnie Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🤧": "stuffed nose", "🥵": "fever", "🤕": "hurt", "🤢": "queasy"]
    
    let customMessages = ["stuffed nose": ["Load up on Kleenex!", "Blow those boogies out!", "Is it allergies?"], "fever": ["Take your temperature! 98.6 is normal!", "A cold compress might help!", "Advil is a fever reducer!"], "hurt": ["Get a band-aid STAT!", "Apply neosporin to help speed healing!", "Wash with warm water and soap to prevent infection!"], "queasy": ["Take some TUMS!", "Drink water and eat bland food (a great time to try the saltine challenge)!", "Have a bucket ready!"]]
    
  
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let emotionArray = customMessages[emojis[selectedEmotion!]!]
        let random = Int.random(in: 0 ..< emotionArray!.count)
        let emojiMessage = emotionArray?[random]
        
//          let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0]

        let alertController = UIAlertController(title: "Non-professional Med-emoji advice:", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

