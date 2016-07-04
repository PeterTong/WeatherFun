//
//  JsonDataExtractor.swift
//  WeatherFun
//
//  Created by KwokWing Tong on 4/7/2016.
//  Copyright © 2016 Tong Kwok Wing. All rights reserved.
//

import Foundation

class JsonDataExtractor{
	
	static func extractVideoDataFromJson(weatherDataObject: AnyObject) -> [Weather] {
		
		guard let weatherData = weatherDataObject as? JSONDictionary else {return [Weather]()}
		
		var weathers = [Weather]()
		
		if let currentWeatherData = weatherData["currently"] as? JSONDictionary {
			
			var currentTime = 0, currentSummary = "", currentPrecipType = "", currentPrecipProbability = 0.0, currentTemperature = 0.0,
					currentApparentTemperature = 0.0, currentHumidity = 0.0, currentVisibility = 0.0
			
					// Current Time
					if let time = currentWeatherData["time"] as? Int {
						currentTime = time
			
					}
			
					// Current Summary
					if let summary = currentWeatherData["summary"] as? String{
						currentSummary = summary
					}
			
					// Current Precipitation Type
					if let precipType = currentWeatherData["precipType"] as? String {
						currentPrecipType = precipType
					}
			
					// A numerical value between 0 and 1 (inclusive) representing the probability of precipitation occurring at the given time
					if let precipProbabiliy = currentWeatherData["precipProbabiliy"] as? Double {
						currentPrecipProbability = precipProbabiliy
					}
			
					// Current Temperature
					if let temperature = currentWeatherData["temperature"] as? Double {
						currentTemperature = temperature
					}
			
					// Current Human Feel temperature
					if let apparentTemperature = currentWeatherData["apparentTemperature"] as? Double{
						currentApparentTemperature = apparentTemperature
					}
					// Current Humidity
					if let humidity = currentWeatherData["humidity"] as? Double {
						currentHumidity = humidity
					}
			
					// Current visibility. A numerical value representing the average visibility in miles, capped at 10 miles.
					if let visibility = currentWeatherData["visibility"] as? Double{
						currentVisibility = visibility
						
					}
			
			let currentWeather = Weather(currentTime: currentTime, currentSummary: currentSummary, currentPrecipType: currentPrecipType, currentPrecipProbability: currentPrecipProbability, currentTemperature: currentTemperature, currentApparentTemperature: currentApparentTemperature, currentHumidity: currentHumidity, currentVisibility: currentVisibility)
			
			weathers.append(currentWeather)
			
		}
		
		
		return weathers
	}
}