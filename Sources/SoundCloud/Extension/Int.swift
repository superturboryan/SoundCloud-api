//
//  Int.swift
//  SC Demo
//
//  Created by Ryan Forsyth on 2023-08-12.
//

import Foundation

extension Int {
    public var dateWithSecondsFromNow: Date {
        Calendar.current.date(
            byAdding: .second,
            value: self,
            to: Date()
        )!
    }
    
    public var timeStringFromSeconds: String {
        let minutes = String(format: "%02d", ((self % 3600) / 60))
        let seconds = String(format: "%02d", ((self % 3600) % 60))
        var result = minutes + ":" + seconds
        
        if self > 3600 {
            let hours = String(format: "%02d", (self / 3600))
            result = hours + ":" + result
        }
        
        return result
    }
}
