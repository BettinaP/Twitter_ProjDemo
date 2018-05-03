////
////  LoginViewController.swift
////  Twitter_ProjDemo
////
////  Created by Bettina on 3/11/18.
////  Copyright © 2018 Bettina Prophete. All rights reserved.
////
//
//import UIKit
//import TwitterKit
//import SafariServices
//
//final class LoginViewController: UIViewController, SFSafariViewControllerDelegate  {
//
//    private lazy var progressVC = LaunchProgressViewController()
//    private lazy var homeTimeLineVC = HomeTimelineViewController()
//
//    private lazy var logInButton = TWTRLogInButton(logInCompletion: logInCompletion)
//
//    private var logInCompletion: TWTRLogInCompletion {
//        return { [weak self] session, error in
//           // self?.present((self?.progressVC)!, animated: true, completion: nil)
//            print("presented progress VC")
//            if let _ = session {
//                print("signed in as \(session?.userName)")
//                self?.navigateToHomePage()
//
//            } else if let error = error {
//              //  self?.progressVC.dismiss(animated: true, completion: nil)
//                self?.show(error: error)
//                print("you need to log in")
//            }
//        }
//    }
//
//    private lazy var store = TWTRTwitter.sharedInstance().sessionStore
//
//    //let lastSession = store.session()
//    //let sessions = store.existingUserSessions()
//   // let specificSession = store.sessionForUserID("123")
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupView()
//        setupLogInButton()
//    }
//
//    // MARK: - Alerts
//
//    private func show(error: Error) {
//        print("ERROR")
//    }
//
//    // MARK: - Navigation
//
//    private func navigateToHomePage() {
//       // present(homeTimeLineVC, animated: true, completion: nil)
//        print("NAVIGATE")
//        //requestUserEmail()
//        print("****EMAIL REQUESTED*****")
//    }
//
////    private func requestUserEmail() {
////
////        TWTRTwitter.sharedInstance().logIn {(session, error) in
////            if let session = session {
////                print("logged in user with id \(session.userID)")
////
////                let client = TWTRAPIClient.withCurrentUser()
////
////                client.requestEmail { email, error in
////                    if (email != nil) {
////                        print("signed in as \(session.userName)");
////                    } else  if let error = error {
////                        print("error: \(error.localizedDescription)");
////                    }
////                }
////            } else {
////                // log error
////                print("******* SESSION ERROR")
////            }
////        }
////    }
//
//
//    // MARK: - Setup
//
//    private func setupView() {
//        view.backgroundColor = .white
//    }
//
//    private func setupLogInButton() {
//        logInButton.center = view.center
//        view.addSubview(logInButton)
//    }
//
//
//}
