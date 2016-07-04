//
//  Weather.swift
//  WeatherFun
//
//  Created by KwokWing Tong on 1/7/2016.
//  Copyright © 2016 Tong Kwok Wing. All rights reserved.
//

import Foundation

class Weather {
	// (set) mean only in this class inializing variable, but in other class can get/access the varible
	private(set) var currentTime: Int
	private(set) var currentSummary: String
	private(set) var currentPrecipType: String
	private(set) var currentPrecipProbability: Double
	private(set) var currentTemperature: Double
	private(set) var currentApparentTemperature: Double
	private(set) var currentHumidity: Double
	private(set) var currentVisibility: Double
	
	init(currentTime: Int, currentSummary:String,currentPrecipType:String,currentPrecipProbability:Double, currentTemperature:Double,currentApparentTemperature:Double,currentHumidity:Double, currentVisibility: Double ){
		
		self.currentTime = currentTime
		self.currentSummary = currentSummary
		self.currentPrecipType  = currentPrecipType
		self.currentPrecipProbability = currentPrecipProbability
		self.currentTemperature = currentTemperature
		self.currentApparentTemperature = currentApparentTemperature
		self.currentHumidity = currentHumidity
		self.currentVisibility = currentVisibility
	}
	
	/*
	//Make a getter 
	var currentTime:Int {
		return _currentTime
		
	}
	
	var currentSummary:String{
		
		
		return _currentSummary
	}
	
	var currentPrecipType: String {
		
		return _currentPrecipType
	}
	
	var currentPrecipProbability: Int {
		return _currentPrecipProbability
	}
	
	var currentTemperature:Int {
		return _currentTemperature
	}
	
	var currentApparentTemperature: Int{
		return _currentApparentTemperature
	}
	
	var currentHumidity: Int {
		return _currentHumidity
	}
	
	var currentVisibility: Int{
		return _currentVisibility
	}
*/
	
	/*
	init(currentWeatherData: JSONDictionary){
		
//		// Current Time
//		if let time = currentWeatherData["time"] as? Int {
//			_currentTime = time
//			
//		}
//		
//		// Current Summary 
//		if let summary = currentWeatherData["summary"] as? String{
//			_currentSummary = summary
//		}
//		
//		// Current Precipitation Type 
//		if let precipType = currentWeatherData["precipType"] as? String {
//			_currentPrecipType = precipType
//		}
//		
//		// A numerical value between 0 and 1 (inclusive) representing the probability of precipitation occurring at the given time
//		if let precipProbabiliy = currentWeatherData["precipProbabiliy"] as? Int {
//			_currentPrecipProbability = precipProbabiliy
//		}
//		
//		// Current Temperature
//		if let temperature = currentWeatherData["temperature"] as? Int {
//			_currentTemperature = temperature
//		}
//		
//		// Current Human Feel temperature
//		if let apparentTemperature = currentWeatherData["apparentTemperature"] as? Int{
//			_currentApparentTemperature = apparentTemperature
//		}
//		// Current Humidity
//		if let humidity = currentWeatherData["humidity"] as? Int {
//			_currentHumidity = humidity
//		}
//		
//		// Current visibility. A numerical value representing the average visibility in miles, capped at 10 miles.
//		if let visibility = currentWeatherData["visibility"] as? Int{
//			_currentVisibility = visibility
//			
//		}
		
		
	}
	*/
	
	
	
	
	
	
}