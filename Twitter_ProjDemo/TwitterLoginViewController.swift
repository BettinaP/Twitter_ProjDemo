//
//  TwitterLoginViewController.swift
//  Twitter_ProjDemo
//
//  Created by Bettina on 4/5/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit
import TwitterKit
import TwitterCore
import SafariServices

class TwitterLoginViewController: UIViewController, SFSafariViewControllerDelegate {
    
    private lazy var twitterLoginButton = TWTRLogInButton()
    private var store = TWTRTwitter.sharedInstance().sessionStore
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupLoginButton()
        //sessionAlreadyExists(session: lastSession)
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupLoginButton() {
        twitterLoginButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(session?.userName)")
                 self.logInMethod()
               // self.twitterBtnPressed()
            } else {
                
                print("error: \(error?.localizedDescription)")
            }
        })
        twitterLoginButton.center = self.view.center
        self.view.addSubview(twitterLoginButton)
    }
    
    private func logInMethod() {
        TWTRTwitter.sharedInstance().logIn(completion: { (session, error) in
            let lastSession = self.store.session() as! TWTRSession
            print("last session: \(lastSession)")
            print("session: \(session)")
            if session == lastSession {
                print("*********session already exists************** USER ID IS: \(session?.userID)")
                //  if (session != nil) {
                // print("*********signed in as \(String(describing: session.userID))")
                //self.sessionAlreadyExists(session: session!)
            } else {
                TWTRTwitter.sharedInstance().logIn { (session, error) in
                    if session != nil {
                        print("LOG IN SUCCEEDED IN ")
                        
                    } else {
                        print("IN TWTBUTTNPRESSED, LOGIN FAILED AND A SESSION DID NOT ALREADY EXIST")
                    }
                    
                }
                print("error: \(String(describing: error?.localizedDescription))")
            }
        })
    }
    
    //        func sessionAlreadyExists(session: TWTRAuthSession) -> Bool {
    //
    //            let lastSession = store.session()
    //
    //            if session == lastSession { // == can't be used to compare TWTRSessions or AuthSessions types
    //                print(session, lastSession)
    //                print("*********session already exists************** USERNAME IS: __________")
    //                return true
    //            } else {
    //                print("session does not exist")
    //            }
    //            return false
    //        }
    
    //    func twitterBtnPressed() {
    //       // if (TwitterCore.getInstance().getSessionManager().getActiveSession() != nil) {
    //            // User already logged-in
    //
    //        let lastSession = self.store.session()
    ////        print("last session: \(lastSession)")
    ////        //print("session: \(session)")
    ////      //  self.sessionAlreadyExists(session: lastSession!)
    //       if let session = lastSession {
    //            print("*********session already exists************** USER ID IS:\(lastSession) ")
    //                //session.userID)")
    //        //if (store.hasLoggedInUsers()) {
    //         //  print("user has already logged in!!!!!")
    //            //app must have a least one logged-in user to compose a tweet
    //
    //            //           let composer = TWTRComposerViewController.init(initialText: "", image: shareImg2, videoURL: nil)
    //            //            composer.delegate = self
    //            //            present(composer, animated: true, completion: nil)
    //        } else {
    //            //log in and then check again
    //            TWTRTwitter.sharedInstance().logIn { (session, error) in
    //                if session != nil {
    //                    print("LOG IN SUCCEEDED IN ")
    //
    //                } else {
    //                    print("IN TWTBUTTNPRESSED, LOGIN FAILED AND A SESSION DID NOT ALREADY EXIST")
    //                }
    //
    //            }
    //        }
    //    }
}

/*
 TwitterAPIManager.loginIfNeeded {(error) in
 if (error != nil) {
 print("some error occured")
 } else {
 print("no error occured, LOGIN complete")
 }
 }
 
 
 */

