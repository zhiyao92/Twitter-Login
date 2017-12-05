//
//  ViewController.swift
//  Social Media Share
//
//  Created by Kelvin Tan on 12/5/17.
//  Copyright © 2017 Kelvin Tan. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func twitterLogin(_ sender: Any) {
        Twitter.sharedInstance().logIn(completion: { (session, error) in
            if (session != nil) {
                print("signed in as \(session?.userName)");
            } else {
                print("error: \(error?.localizedDescription)");
            }
        })
    }
}


