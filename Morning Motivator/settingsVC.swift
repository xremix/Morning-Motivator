//
//  settingsVC.swift
//  Morning Motivator
//
//  Created by Toni Hoffmann on 16.06.16.
//  Copyright © 2016 Toni Hoffmann. All rights reserved.
//

import UIKit

class settingsVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bedTextField: UITextField!
    @IBOutlet weak var showerTextField: UITextField!
    @IBOutlet weak var drivingTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        bedTextField.delegate = self
//        showerTextField.delegate = self
//        drivingTextField.delegate = self
//        
//        bedTextField.text = String(Settings.getBedTime())
//        showerTextField.text = String(Settings.getShowerTime())
//        drivingTextField.text = String(Settings.getDrivingTime())
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        bedTextField.delegate = self
        showerTextField.delegate = self
        drivingTextField.delegate = self
        
        bedTextField.text = String(Settings.getBedTime())
        showerTextField.text = String(Settings.getShowerTime())
        drivingTextField.text = String(Settings.getDrivingTime())
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if(textField == bedTextField){
            let val = Int(bedTextField.text!)
            if(val != nil){
                Settings.setBedTime(val!)
            }
            bedTextField.text = String(Settings.getBedTime())
        }
        
        if(textField == showerTextField){
            let val = Int(showerTextField.text!)
            if(val != nil){
                Settings.setShowerTime(val!)
            }
            showerTextField.text = String(Settings.getShowerTime())
        }
        
        if(textField == drivingTextField){
            let val = Int(drivingTextField.text!)
            if(val != nil){
                Settings.setDrivingTime(val!)
            }
            drivingTextField.text = String(Settings.getDrivingTime())
        }
        
        self.view.endEditing(true)
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
