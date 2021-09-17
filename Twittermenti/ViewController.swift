//
//  ViewController.swift
//  Twittermenti
//
//  Created by Oleksii Vasyliev on 13.09.2021.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!

    let swifter = Swifter(consumerKey: "MbOig5ORzMo7YtLojVoW3Arbo", consumerSecret: "m5l0t5Iu5bZPez3oJNmfyo5zsnJCmSITpooYBP4Bb4SQMKFNJS")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func predictPressed(_ sender: Any) {
    
    
    }
    
}

