//
//  Double.swift
//  Crypto
//
//  Created by Piyush Singh on 23/01/23.
//

import Foundation

extension Double {
    /// Converts a double into a currency with 2   decimal places
    ///  ```
    /// Convert 1234.78 to $1,234.78
    ///   ```
    private var currencyformatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumIntegerDigits = 2
        return formatter
    }
    /// Converts a double into a Currency as a String with 2 decimal places
    ///  ```
    /// Convert 1234.78 to "$1,234.78"
    ///   ```
    func asCurrencyWith2decimals() -> String {
        let number = NSNumber(value: self)
        return currencyformatter2.string(from: number ) ?? "$0.00"
    }
    /// Converts a double into a currency with 2-6 decimal places
    ///  ```
    /// Convert 1234.78 to $1,234.78
    ///   ```
    private var currencyformatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumIntegerDigits = 6
        return formatter
    }
    /// Converts a double into a Currency as a String with 2-6 decimal places
    ///  ```
    /// Convert 1234.78 to "$1,234.78"
    ///   ```
    func asCurrencyWith6decimals() -> String {
        let number = NSNumber(value: self)
        return currencyformatter6.string(from: number ) ?? "$0.00"
    }
    /// Converts a double into a string representation
    ///  ```
    /// Convert 1234.78 to "1.23"
    ///   ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    /// Converts a double into a string representation with percent symbol
    ///  ```
    /// Convert 1234.78 to "1.23%"
    ///   ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
