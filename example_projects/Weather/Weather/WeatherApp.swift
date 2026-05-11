//
//  WeatherApp.swift
//  Weather
//
//  Created by Cameron on 30/04/2026.
//

import OSLog
import SwiftUI

@main
struct WeatherApp: App {
    private let weatherService: WeatherService

    init() {
        if CommandLine.arguments.contains("--mock-weather-api") {
            weatherService = .mock
        } else {
            weatherService = .production
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView(weatherService: weatherService)
        }
    }
}
