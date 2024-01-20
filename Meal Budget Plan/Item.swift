//
//  Item.swift
//  Meal Budget Plan
//
//  Created by Oscar Navarro on 1/19/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
