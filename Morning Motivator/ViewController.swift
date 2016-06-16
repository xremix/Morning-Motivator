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
        
        let calc = DateCalculator()
        
        
        
        addView(100, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getBedTime())), icon: FontAwesome.Bed);
        addView(150, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getShowerTime())), icon: FontAwesome.Tint);
        addView(200, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getDrivingTime())), icon: FontAwesome.Car);
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func addView(y: Int, timeText: String, icon: FontAwesome)->RouteView{
        let viewRow = RouteView(frame: CGRect(x: 20, y: y, width: 350, height: 50))
        viewRow.middleText.text = timeText
        viewRow.leftIcon.text = String.fontAwesomeIconWithName(icon)
        self.view.addSubview(viewRow)
        return viewRow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

