

import Foundation

let Кортежи = """
    
    class Weather {
        var currentWeather: (Int, String)
        
        init(currentWeather: (Int, String)) {
            self.currentWeather = currentWeather
        }
    }

    let weather = Weather(currentWeather: (22, "Sunny"))
    
    Доступ у элементам
    
    weather.currentWeather

    weather.currentWeather.0 = 24
    weather.currentWeather.1 = "Rainy"

    let (_, atmos) = weather.currentWeather
    atmos
    
    Именование
    
    var currentWeather = (temp: 22, atmos: "Sunny", windSpeed: 6)

    currentWeather.0 = 4
    currentWeather.atmos
    currentWeather.windSpeed

    

    """
