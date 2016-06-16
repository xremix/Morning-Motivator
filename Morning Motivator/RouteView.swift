//
//  RouteView.swift
//  Morning Motivator
//
//  Created by Toni Hoffmann on 14.06.16.
//  Copyright © 2016 Toni Hoffmann. All rights reserved.
//

import UIKit

class RouteView: UIView {
    let leftIcon = UILabel(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
    let rightIcon = UILabel(frame: CGRect(x: 200, y: 0, width: 60, height: 40))
    let middleText = UILabel(frame: CGRect(x: 60, y: 0, width: 140, height: 40))
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        addLeftIcon()
        addTime()
        addRightIcon()        
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func addLeftIcon (){
        leftIcon.textAlignment = NSTextAlignment.Center
        leftIcon.font = UIFont.fontAwesomeOfSize(24)
        leftIcon.text = String.fontAwesomeIconWithName(FontAwesome.Bed)
        leftIcon.textColor = UIColor.darkGrayColor()
        self.addSubview(leftIcon)
    }
    
    func addTime (){
        middleText.textColor = UIColor.blackColor()
        self.addSubview(middleText)
    }
    func addRightIcon (){
        
        rightIcon.font = UIFont.fontAwesomeOfSize(24)
        rightIcon.text = String.fontAwesomeIconWithName(FontAwesome.Briefcase)
        rightIcon.textColor = UIColor.darkGrayColor()
        self.addSubview(rightIcon)
    }
    
    func setTextColor(color: UIColor){
        leftIcon.textColor = color
        middleText.textColor = color
        rightIcon.textColor = color
    }

}
