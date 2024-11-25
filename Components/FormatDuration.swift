//
//  FormatDuration.swift
//  Components
//
//  Created by Ilia Kharlamov on 22.11.2024.
//

import Foundation

public func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
    let ms = timeInterval * 1000
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.minimumFractionDigits = 3
    formatter.maximumFractionDigits = 3
    return formatter.string(from: NSNumber(floatLiteral: ms))!
}
