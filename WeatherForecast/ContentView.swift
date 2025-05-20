//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Theodore Zhu on 5/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day: "Mon", isRainy: false, high: "Weed", low: "No Bushes")
            DayForecast(day: "Tue", isRainy: true, high: "Sob Sob", low: "Can't cry")
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: String //For funnier names
    let low: String
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }
        return "sun.max.fill"
    }
    var iconColor: Color {
        if isRainy {
            return Color.blue
        }
        return Color.yellow
    }
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: " + high)
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(Color.secondary)
            Text("Low: " + low)
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
