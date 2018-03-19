//
//  ViewController.swift
//  Twitter_ProjDemo
//
//  Created by Bettina on 3/11/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit
import TwitterKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    var logInButton: TWTRLogInButton!
    
    //let PostBaseURL = "https://api.twitter.com/1.1/statuses/update.json"
    // let resourceURL= "https://api.twitter.com/oauth/authenticate"
    //https://api.twitter.com/oauth/authenticate?oauth_token=Z6eEdO8MOmk394WozF5oKyuAv855l4Mlqo7hhlSLik
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating LogIn button
        logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("** SIGNED IN as \(session?.userName)")
            } else {
                print("**ERROR: \(error?.localizedDescription)")
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
        
      
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

