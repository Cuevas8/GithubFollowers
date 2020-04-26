//
//  String+Ext.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/23/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "" }
        return date.convertToMonthYearFormat()
    }
}
