//
//  ViewController.swift
//  RAMAnimatedTabBarDemo
//
//  Created by Alex Kalinkin on 11/18/14.
//  Copyright (c) 2014 Ramotion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        if let tabBarController = tabBarController as? RAMAnimatedTabBarController {
            tabBarController.bottomLineWidth = 10
            tabBarController.bottomLineOffset = -10
            tabBarController.isBottomLineShow = true
        }
    }

    var index: NSInteger = 0

    // PRAGMA: actions
    @IBAction func showBadgeHandelr(_: AnyObject) {
        // example for showing badges
        index += 1
        tabBarItem.badgeValue = "\(index)"
    }

    @IBAction func hideBadgeHandler(_: AnyObject) {
        tabBarItem.badgeValue = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
