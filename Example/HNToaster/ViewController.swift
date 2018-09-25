//
//  ViewController.swift
//  HNToaster
//
//  Created by hahnah on 09/24/2018.
//  Copyright (c) 2018 hahnah. All rights reserved.
//

import UIKit
import HNToaster

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toastButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
        toastButton.center = CGPoint(x: self.view.center.x, y: self.view.bounds.height * 0.7)
        toastButton.tintColor = UIColor.white
        toastButton.backgroundColor = UIColor.blue
        toastButton.setTitle("TOAST", for: .normal)
        toastButton.addTarget(self, action: #selector(self.toastButtonDidTapped(_:)), for: .touchUpInside)
        self.view.addSubview(toastButton)
    }
    
    @objc func toastButtonDidTapped(_ sender: UIButton) {
        /* usage example 1 */
        let message1: String = "Can you see me?"
        Toaster.toast(onView: self.view, message: message1)
        
        /* usage examle 2 */
        let message2: String = """
        You can optionally set
        the toast's frame
        and the message's font.
        """
        let toastFrame: CGRect = CGRect(x: 10, y: self.view.bounds.height - 120, width: self.view.bounds.width - 20, height: 90)
        let messageFont: UIFont = UIFont.boldSystemFont(ofSize: 24)
        Toaster.toast(onView: self.view, message: message2, frame: toastFrame, font: messageFont)
    }
    
}
