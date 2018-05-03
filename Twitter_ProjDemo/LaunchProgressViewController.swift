//
//  LaunchProgressViewController.swift
//  Twitter_ProjDemo
//
//  Created by Bettina on 4/5/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit
import TwitterKit

class LaunchProgressViewController: UIViewController {

    private var progressView = UIProgressView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // setupView()
        progress()
        
    }

//    private func setupView() {
//        let twitterLogo = UIImageView.init(image: UIImage(named: "twitterLogo.png"))
//        twitterLogo.center = view.center
//        twitterLogo.contentMode = .scaleAspectFit
//        view.addSubview(twitterLogo)
//        
//        view.backgroundColor = UIColor(displayP3Red: 39, green: 170, blue: 225, alpha: 1.0)
//        
//        progressView.widthAnchor.constraint(equalTo: twitterLogo.widthAnchor).isActive = true
//        
//    }

    func progress() {
        print("in progress")
        /*
         var time = 0.0
         var timer: NSTimer
         
         timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:Selector("setProgress"), userInfo: nil, repeats: true)
         
         func setProgress() {
         time += 0.1
         progressView.progress = time / 3
         if time >= 3 {
         timer.invalidate()
         }
         }
        */
    }
}
