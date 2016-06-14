//
//  ViewController.swift
//  Morning Motivator
//
//  Created by Toni Hoffmann on 14.06.16.
//  Copyright © 2016 Toni Hoffmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = RouteView(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        customView.middleText.text = "8:01"
        self.view.addSubview(customView)
        
        
        let customView2 = RouteView(frame: CGRect(x: 20, y: 150, width: 350, height: 50))
        customView2.middleText.text = "8:20"
        customView2.leftIcon.text = String.fontAwesomeIconWithName(FontAwesome.Tint)
        self.view.addSubview(customView2)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

