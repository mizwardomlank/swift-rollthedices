//
//  ViewController.swift
//  RoleTheDices
//
//  Created by Miftah Mizwar on 9/29/17.
//  Copyright © 2017 Miftah Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightDiceView: UIImageView!
    @IBOutlet weak var leftDiceView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonTapped(_ sender: Any) {
        let randomNumber = Int(arc4random_uniform(5)+1)
        leftDiceView.image = UIImage(named: "dieWhite_border\(randomNumber)")
        
        let randomNumber2 = Int(arc4random_uniform(5)+1)
        rightDiceView.image = UIImage(named: "dieWhite_border\(randomNumber2)")
    }
    
}

