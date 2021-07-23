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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SearchAction(_ sender: UIBarButtonItem) {
    }
    
}

