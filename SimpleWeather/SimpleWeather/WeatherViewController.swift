//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 한빈 on 2022/07/05.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var weatherImageview: UIImageView!
    @IBOutlet var temp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBAction func changeButtonTapTap(_ sender: Any)
    {
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        
        weatherImageview.image =
        UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in : 10..<30)
        temp.text = "\(randomTemp)°"
        print("Hi")
    }
    


}
