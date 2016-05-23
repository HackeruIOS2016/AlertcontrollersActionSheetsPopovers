//
//  AlertHelper.swift
//  AlertsDemo
//
//  Created by HackerU on 23/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class AlertHelper {
    var textFields:[UITextField]!
    var alert:UIAlertController!
    var saveAction:UIAlertAction!
    var cancelAction:UIAlertAction!
    
    init(){
        alert = UIAlertController(title: "Add User", message: "", preferredStyle: .Alert)
        
        saveAction = UIAlertAction(title: "Save", style: .Default) { (action) -> Void in
             print(self.textFields[0].text)
             print(self.textFields[1].text)
        }
        
        cancelAction = UIAlertAction(title: "Cancel", style: .Destructive) { (action) -> Void in
            //
        }
        
        alert.addTextFieldWithConfigurationHandler { (userNameTextField) -> Void in
            userNameTextField.placeholder = "<User Name...>"
            
            //add self as the target for the .EditingChanged Event:
            userNameTextField.addTarget(self, action: "editingChanged:", forControlEvents: .EditingChanged)
        }
        
        alert.addTextFieldWithConfigurationHandler { (userNameTextField) -> Void in
            userNameTextField.placeholder = "<Email...>"
        }
        
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        
        self.textFields = alert.textFields
    }
    
    dynamic func editingChanged(textField:UITextField){
        saveAction.enabled = textField.text?.characters.count > 2
    }
}