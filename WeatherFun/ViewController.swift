//
//  ViewController.swift
//  WeatherFun
//
//  Created by KwokWing Tong on 1/7/2016.
//  Copyright © 2016 Tong Kwok Wing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var curweathers:[Weather]!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		let api = APIManager()
		api.loadData("https://api.forecast.io/forecast/04f92db01ba574feb675c1e7642619b2/22.339337,114.109066?units=si",completion:didLoadData)
	}
	
	func didLoadData(weathers:[Weather]){
		
		curweathers = weathers
		
		for temperature in weathers{
			print("Current Temperature: \(temperature.currentTemperature)")
		}
		
		for summary in weathers{
			print("Summary: \(summary.currentSummary)")
		}
	}

	
	
	


}

