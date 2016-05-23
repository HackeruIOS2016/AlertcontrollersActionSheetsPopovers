//
//  ViewController.swift
//  AlertsDemo
//
//  Created by HackerU on 23/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPerson(sender: UIButton) {
       let helper = AlertHelper()
       presentViewController(helper.alert, animated: true, completion: nil)
    }
    
    
    @IBAction func dispAlert(sender: UIButton) {
        //1) init an alertViewController:
        let alert = UIAlertController(
            title: "Good Morning",
            message: "Would you like some coffee?",
            preferredStyle: .Alert
        )
        
        //2) Set some properties:
        alert.addAction(UIAlertAction(title: "No", style: .Destructive, handler: { (action) -> Void in
            print("No Tapped")
        }))
        
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
            print("Ok Tapped")
        }))
        
     
        
        
        
        //3) presentViewController(animated:)
        presentViewController(alert, animated: true, completion: nil)
    }



}

