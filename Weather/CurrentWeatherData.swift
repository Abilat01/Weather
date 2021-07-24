//
//  CurrentWeatherData.swift
//  Weather
//
//  Created by Danya on 23.07.2021.
//

import Foundation

struct CurrentWeatherData: Decodable {
    
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Decodable {
    let temp: Double
    let feelsLike: Double
    let pressure: Double
    let humidity: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case pressure
        case humidity
    }
    
}

struct Weather: Decodable {
    let id: Int
}
