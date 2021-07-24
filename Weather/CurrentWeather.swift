//
//  CurrentWeather.swift
//  Weather
//
//  Created by Danya on 24.07.2021.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    
    let feelsLike: Double
    var feelsLikeString: String {
        return "\(feelsLike.rounded())"
    }
    
    let pressure: Double
    var pressureString: String {
        return "\(pressure.rounded())"
    }
    
    
    let humidity: Double
    var humidityString: String {
        return "\(humidity.rounded())"
    }
    
    let conditionCode: Int
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLike = currentWeatherData.main.feelsLike //!
        pressure = currentWeatherData.main.pressure
        humidity = currentWeatherData.main.humidity
        conditionCode = currentWeatherData.weather.first!.id
        
        
        
    }
}
