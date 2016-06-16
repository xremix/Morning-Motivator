//
//  TodayViewController.swift
//  Morning Motivator Widget
//
//  Created by Toni Hoffmann on 15.06.16.
//  Copyright © 2016 Toni Hoffmann. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    var bedLabel: RouteView? = nil
    var showerLabel: RouteView? = nil
    var drivingLabel: RouteView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        self.preferredContentSize = CGSizeMake(0, 110);
        
        let calc = DateCalculator()
        
        bedLabel = addView(0, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getBedTime())), icon: FontAwesome.Bed);
        showerLabel = addView(40, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getShowerTime())), icon: FontAwesome.Tint);
        drivingLabel = addView(80, timeText: calc.dateTimeText(calc.getDateFromNowWithMinutes(Settings.getDrivingTime())), icon: FontAwesome.Car);
    }
    
    func addView(y: Int, timeText: String, icon: FontAwesome)->RouteView{
        let viewRow = RouteView(frame: CGRect(x: 20, y: y, width: 350, height: 50))
        viewRow.setTextColor(UIColor.whiteColor())
        viewRow.middleText.text = timeText
        viewRow.leftIcon.text = String.fontAwesomeIconWithName(icon)
        self.view.addSubview(viewRow)
        return viewRow
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}
