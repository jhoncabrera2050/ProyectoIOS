//
//  CarViewModel.swift
//  sem3-A
//
//  Created by Alumno on 21/04/23.
//


import Foundation

class CarViewModel {
    
    public static var cars:[Auto] = [Auto]()
    
    //Creamos 2 funciones una para crear y otra para obtener
    static func getCars() -> [Auto] {
        return cars
    }
    
    static func storeCar(car: Auto) {
        cars.append(car)
    }
}

