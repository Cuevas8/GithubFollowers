//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/23/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
