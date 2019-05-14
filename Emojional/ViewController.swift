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
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text

        let alertController = UIAlertController(title: "Non-professional Med-emoji advice:", message: "\(emojis[selectedEmotion!]!)", preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

