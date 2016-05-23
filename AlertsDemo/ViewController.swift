//
//  ViewController.swift
//  AlertsDemo
//
//  Created by HackerU on 23/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func dispActionSheet(sender: UIButton) {
        let alert = UIAlertController(title: "Sheet?", message: nil, preferredStyle: .ActionSheet)
        
        alert.addAction(UIAlertAction(title: "Flag", style: .Default, handler: { (action) -> Void in
            print("Flag")
        }))
        
        alert.addAction(UIAlertAction(title: "Mark as Unread", style: .Default, handler: { (action) -> Void in
            print("Mark as Unread")
        }))
        
        alert.addAction(UIAlertAction(title: "Move to Junk", style: .Default, handler: { (action) -> Void in
            print("Move to Junk")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .Destructive, handler: { (action) -> Void in
            print("Cancel")
        }))
        
        //customise for IPAD:
        alert.popoverPresentationController?.sourceRect = sender.frame
        alert.popoverPresentationController?.sourceView = self.view
        
    
        presentViewController(alert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

