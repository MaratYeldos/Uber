//
//  Double.swift
//  UberClone
//
//  Created by Yeldos Marat on 31.10.2022.
//

import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(from: self as NSNumber) ?? ""
    }
}
