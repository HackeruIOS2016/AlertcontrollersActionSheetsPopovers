//
//  ViewController.swift
//  AlertsDemo
//
//  Created by HackerU on 23/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func addPerson(sender: UIButton) {
        //1) init an alertViewController:
        let alert = UIAlertController(title: "Add User", message: "", preferredStyle: .Alert)
        
        //2) Add some textFields:
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "<User Name>"
        }
        
        //Add a textField with an icon to the right :)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "<Email>"
            let imageView = UIImageView(image: UIImage(named: "email")!)
            imageView.frame = CGRect(x: 100, y: 0, width: 20, height: 20)
            
            textField.rightView = imageView
            textField.rightViewMode = .Always
            
        }
        
        //3) Add some Actions:
        alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action) -> Void in
            print("Cancel Tapped")
        }))
        
        alert.addAction(UIAlertAction(title: "Save", style: .Default, handler: { (action) -> Void in
            print("Save Tapped")
            
            let userTextField = alert.textFields![0]
            
            let emailTextField = alert.textFields![1]
            
            print("\(userTextField.text!)\n\(emailTextField.text!)")
        }))
        
        //4) presenet The View Controller:
        presentViewController(alert, animated: true, completion: nil)
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

