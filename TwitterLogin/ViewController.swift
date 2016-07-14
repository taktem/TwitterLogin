//
//  ViewController.swift
//  TwitterLogin
//
//  Created by 西村 拓 on 2016/07/14.
//  Copyright © 2016年 TakuNishimura. All rights reserved.
//

import UIKit

import TwitterKit


class ViewController: UIViewController {
    
    @IBOutlet private weak var twitterButton: UIButton!

    private let tw = Twitter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func twt() {
        
        tw.logInWithCompletion { (session: TWTRSession?, error: NSError?) in
            if let session = session {
                print(session.userName)
                print(session.userID)
            }
        }
    }
}

