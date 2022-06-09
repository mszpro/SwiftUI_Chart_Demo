//
//  ChartEntry.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/09.
//

import Foundation
import SwiftUI

struct ChartEntry: Identifiable {
    var title: String
    var value: Double
    var color: Color = .green
    var id: String {
        return title + String(value)
    }
}
