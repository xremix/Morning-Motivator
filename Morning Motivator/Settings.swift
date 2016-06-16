//
//  Settings.swift
//  Morning Motivator
//
//  Created by Toni Hoffmann on 16.06.16.
//  Copyright © 2016 Toni Hoffmann. All rights reserved.
//

import UIKit

class Settings: NSObject {
    
    static private func setIntSetting(value: Int, forKey: String){
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(value, forKey: forKey);
    }
    static private func getIntSetting(key: String)->Int?{
        let defaults = NSUserDefaults.standardUserDefaults()
        if(defaults.objectForKey(key) != nil){
            return defaults.integerForKey(key)
        }
        return nil;
    }
    
    static func setShowerTime(time: Int){
        setIntSetting(time, forKey: "showerTime");
    }
    static func getShowerTime() -> Int{
        return getIntSetting("showerTime") == nil ? 32 : getIntSetting("showerTime")!;
    }
    
    static func setBedTime(time: Int){
        setIntSetting(time, forKey: "bedTime");
    }
    static func getBedTime() -> Int{
        return getIntSetting("bedTime") == nil ? 45 : getIntSetting("bedTime")!;
    }
    
    static func setDrivingTime(time: Int){
        setIntSetting(time, forKey: "drivingTime");
    }
    static func getDrivingTime() -> Int{
        return getIntSetting("drivingTime") == nil ? 25 : getIntSetting("drivingTime")!;
    }
}
