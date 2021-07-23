//
//  ViewController.swift
//  Weather
//
//  Created by Danya on 22.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var ItFeelsLikeLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var PressureLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel! //дату получаем не через запрос
    
    var networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkManager.fetchCurrentWeather(forCity: "Moscow")
    }
    
    
    @IBAction func SearchAction(_ sender: UIBarButtonItem) {
        self.presentAlertControler(withTitle: "Введите название города", message: nil, style: .alert)
    }
    
}

