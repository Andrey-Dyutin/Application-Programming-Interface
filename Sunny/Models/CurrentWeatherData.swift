//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Андрей Дютин on 11.08.2020.
//  Copyright © 2020 Ivan Akulov. All rights reserved.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp, feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
    
}

struct Weather: Codable {
    let id: Int
}
