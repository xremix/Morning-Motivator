//
//  DateCalculator.swift
//  Morning Motivator
//
//  Created by Toni Hoffmann on 15.06.16.
//  Copyright © 2016 Toni Hoffmann. All rights reserved.
//

import UIKit

class DateCalculator: NSObject {
    
    func getMinutes(minutes: Int)-> Double {
        return (Double)(minutes * 60)
    }
    
    func getDifferenceFromNow()->NSTimeInterval{
        let now = NSDate();
        let endDate = now.dateByAddingTimeInterval(self.getMinutes(20))
        let timeBetween = endDate.timeIntervalSinceNow
        return timeBetween
    }
    
    func getDateFromNowWithMinutes(minutes: Int)->NSDate{
        return dateAppendMinutes(NSDate(), minutes: minutes)
    }
    func dateAppendMinutes(date:NSDate, minutes: Int)->NSDate{
        let endDate = date.dateByAddingTimeInterval(self.getMinutes(minutes))
        return endDate
    }
    
    func getDrivingDateFromNow(now: NSDate)->NSDate{
        return getDateFromNowWithMinutes(20)
    }
    
    func differenceText(difference: NSTimeInterval)->String{
        _ = Int(difference)
        let seconds = difference % 60
        let minutes = (difference / 60) % 60
        let hours = (difference / 3600)
        let formattedString = String(format: "%.fh : %.fm : %.fs", hours, minutes, seconds)
        
        return formattedString
    }
    func dateTimeText(date: NSDate)->String{
        let formatter = NSDateFormatter()
        formatter.dateFormat = "hh:mm"
        let seconds = formatter.stringFromDate(date)
        return seconds
    }

}
