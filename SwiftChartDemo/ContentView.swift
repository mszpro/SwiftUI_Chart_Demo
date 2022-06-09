//
//  ContentView.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/07.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            List {
                NavigationLink("Single chart view", value: "single_chart")
                NavigationLink("Line chart with points", value: "point_line_chart")
                NavigationLink("Multiple chart view", value: "multiple_chart")
                NavigationLink("Area mark chart", value: "area_mark")
            }
            .navigationDestination(for: String.self) { value in
                if value == "single_chart" {
                    Charts_Single()
                } else if value == "multiple_chart" {
                    Charts_Multiple()
                } else if value == "area_mark" {
                    Charts_AreaMark()
                } else if value == "point_line_chart" {
                    Charts_PointLine()
                }
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
