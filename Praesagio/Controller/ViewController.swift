//
//  ViewController.swift
//  Praesagio
//
//  Created by Archangel on 09/07/20.
//  Copyright © 2020 Archangel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, WeatherManagerDelegate {

    @IBOutlet weak var locationSearch: UITextField!
    @IBOutlet weak var tempratureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomTextField()
        weatherManager.delegate = self
        searchTextField.delegate = self

    }
    
    func setupCustomTextField () {
        
        //Creating Single Line Text Field
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: locationSearch.frame.height - 2, width: locationSearch.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        locationSearch.borderStyle = .none
        locationSearch.layer.addSublayer(bottomLine)
    }
    
    //Close textField when return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
    
    //textField will close when user enters something
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        } else {
            textField.placeholder = "Type Something"
            return false
        }
    }
    
    //When textField is done editing do this
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        searchTextField.text = ""
    }
    
    func didUpdateWeather(weather: WeatherModel){
        print(weather.temprature)
    }


}


