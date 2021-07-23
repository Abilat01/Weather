//
//  AlertControler.swift
//  Weather
//
//  Created by Danya on 23.07.2021.
//

import UIKit

extension ViewController {
    
    func presentAlertControler(withTitle title: String?, message: String?, style: UIAlertController.Style) {
        let alertControler = UIAlertController(title: title, message: message, preferredStyle: style)
        alertControler.addTextField { tf in
            let cities = ["Kolpino", "Sankt Peterburg", "Ufa", "Moscow", "Krasnodar"]
            tf.placeholder = cities.randomElement() //рандом городов в плайсхолдере
        }
        
        let search = UIAlertAction(title: "Поиск", style: .default) { action in
            let textField = alertControler.textFields?.first
            guard let cityName = textField?.text else { return }
            if cityName != "" {
                print("Поиск информации по \(cityName)")
            }
        }
        let cansel = UIAlertAction(title: "Отмена", style: .cancel)
        
        alertControler.addAction(search)
        alertControler.addAction(cansel)
        present(alertControler, animated: true)
    }
    
}
