//
//  DateFormatHelper.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/8.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import UIKit

public class DateFormatHelper: NSObject {

    private static var yearMonthDayFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = NSLocale.currentLocale()
        return formatter
    }()
    
    private static var timeFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.locale = NSLocale.currentLocale()
        return formatter
    }()
    
    /**
     Format Date to String like '2015-10-12'
    */
    public class func formatToYearMonthDay(date: NSDate) -> String {
        return DateFormatHelper.yearMonthDayFormatter.stringFromDate(date)
    }
    
    /**
     Format Date to String like '2015-10-12 12:38:20'
    */
    public class func formatToTime(date: NSDate) -> String {
        return DateFormatHelper.timeFormatter.stringFromDate(date)
    }
}
