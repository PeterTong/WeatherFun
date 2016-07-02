//
//  Weather.swift
//  WeatherFun
//
//  Created by KwokWing Tong on 1/7/2016.
//  Copyright © 2016 Tong Kwok Wing. All rights reserved.
//

import Foundation

class Weather {
	
	private var _currentTime: Int
	private var _currentSummary: String
	private var _currentPrecipType: String
	private var _currentPrecipProbability: Int
	private var _currentTemperature: Int
	private var _currentApparentTemperature: Int
	private var _currentHumidity: Int
	private var _currentVisibility: Int
	
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
	
	
	init(currentWeatherData: JSONDictionary){
		
		// Current Time
		if let time = currentWeatherData["time"] as? Int {
			_currentTime = time
			
		}else{
			_currentTime = 0
		}
		
		// Current Summary 
		if let summary = currentWeatherData["summary"] as? String{
			_currentSummary = summary
		}else{
			_currentSummary = ""
		}
		
		// Current Precipitation Type 
		if let precipType = currentWeatherData["precipType"] as? String {
			_currentPrecipType = precipType
		}else{
			_currentPrecipType = ""
		}
		
		// A numerical value between 0 and 1 (inclusive) representing the probability of precipitation occurring at the given time
		if let precipProbabiliy = currentWeatherData["precipProbabiliy"] as? Int {
			_currentPrecipProbability = precipProbabiliy
		}else{
			_currentPrecipProbability = 0
		}
		
		// Current Temperature
		if let temperature = currentWeatherData["temperature"] as? Int {
			_currentTemperature = temperature
		}else{
			_currentTemperature = 0
		}
		
		// Current Human Feel temperature
		if let apparentTemperature = currentWeatherData["apparentTemperature"] as? Int{
			_currentApparentTemperature = apparentTemperature
		}else{
			_currentApparentTemperature = 0
		}
		// Current Humidity
		if let humidity = currentWeatherData["humidity"] as? Int {
			_currentHumidity = humidity
		}else{
			_currentHumidity = 0
		}
		
		// Current visibility. A numerical value representing the average visibility in miles, capped at 10 miles.
		if let visibility = currentWeatherData["visibility"] as? Int{
			_currentVisibility = visibility
			
		}else{
			_currentVisibility = 0
		}
		
		
	}
	
	
	
	
	
}