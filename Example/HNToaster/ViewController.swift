/*
 Copyright (c) 2018 hahnah <superhahnah@gmail.com>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/

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
        let toastFrame: CGRect = CGRect(x: 10, y: self.view.bounds.height - 150, width: self.view.bounds.width - 20, height: 120)
        let messageFont: UIFont = UIFont.italicSystemFont(ofSize: 32)
        Toaster.toast(onView: self.view, message: message2, frame: toastFrame, font: messageFont)
    }
    
}
