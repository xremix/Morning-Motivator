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
    var bedLabel: RouteView? = nil
    var showerLabel: RouteView? = nil
    var drivingLabel: RouteView? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calc = DateCalculator()
        bedLabel = addView(100, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getBedTime())), icon: FontAwesome.Bed);
        showerLabel = addView(150, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getShowerTime())), icon: FontAwesome.Tint);
        drivingLabel = addView(200, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getDrivingTime())), icon: FontAwesome.Car);
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        let calc = DateCalculator()
        bedLabel!.middleText.text = calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getBedTime()))
        showerLabel!.middleText.text = calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getShowerTime()))
        drivingLabel!.middleText.text = calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getDrivingTime()))
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

