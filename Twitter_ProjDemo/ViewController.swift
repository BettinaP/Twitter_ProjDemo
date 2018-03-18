//
//  ViewController.swift
//  Twitter_ProjDemo
//
//  Created by Bettina on 3/11/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {
    
    
    
    //let PostBaseURL = "https://api.twitter.com/1.1/statuses/update.json"
    // let resourceURL= "https://api.twitter.com/oauth/authenticate"
    //https://api.twitter.com/oauth/authenticate?oauth_token=Z6eEdO8MOmk394WozF5oKyuAv855l4Mlqo7hhlSLik
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logInWithTwitterTapped(_ sender: UIButton) {
        
    }
    
    
}

/*
 get request token and what are the endpoints for request token
 @IBAction func login {
 
 TwitterClient.sharedInstance.requestSerializer.removeAccessToken()
 TwitterClient.sharedInstance.fetchRequestTokenWithPath("oauth/request_token", method: "GET", callbackURL:NSURL(string: ""), scope: nil, success: {(requestToken: BDOBOAuthToken!) -> Void in println("Got request token")
 
 then get authentication URL like :
 var authURL = NSURL(String: "https://api.twitter.com/oauth/authorize?oauth_token=Z6eEdO8MOmk394WozF5oKyuAv855l4Mlqo7hhlSLik")
 UIApplication.sharedApplication().openURL(authURL)
 }) { (error: NSError!) -> Void in
 println("Error getting the request token: \(erro)")
 }
 }
 */

