//
//  APIManager.swift
//  WeatherFun
//
//  Created by KwokWing Tong on 1/7/2016.
//  Copyright © 2016 Tong Kwok Wing. All rights reserved.
//

import Foundation

class APIManager {
	
	func loadData(urlString: String, completion: [Weather] -> Void){
		
		let config = NSURLSessionConfiguration.ephemeralSessionConfiguration()
		
		let session = NSURLSession(configuration: config)
		
		let url = NSURL(string: urlString)!
		
		let task = session.dataTaskWithURL(url) { (data, response, error) in
			
			if error != nil {
				print(error!.localizedDescription)
			}else{
				//Added for JSONSerialization
				do{
					/* .AllowFragments - top level object is not Array or Dictionary.
					Any type of string or value
					NSJSONSerialization requires the Do / Try / Catch
					Converts the NSDATA into a JSON Object and cast it to a Dictionary */
					
					if let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? JSONDictionary, currently = json["currently"] as? JSONDictionary {
						
						var weathers = [Weather]()
						let curweather = Weather(currentWeatherData: currently )
						weathers.append(curweather)
						
						let i = weathers.count
						print("Weather - total count --> \(i)")
						print(" ")
						
						let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
						dispatch_async(dispatch_get_global_queue(priority, 0)){
							dispatch_async(dispatch_get_main_queue()){
								completion(weathers)
							}
						}
						
					}
				}catch{
					print("error in NSJSONSerializtion")
				}
				
			}
			
		}
		task.resume()
	}
	
	
	
}