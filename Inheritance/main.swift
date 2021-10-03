//
//  main.swift
//  Inheritance
//
//  Created by 2lup on 04.10.2021.
//

import Foundation

print("Hello, World!")

//MARK: Определение базового класса
print("\n//Определение базового класса")

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "движется на скорости \(currentSpeed) миль в час"
    }
    func makeNoise() {
        //ничего не делаем, так как не каждый транспорт шумит
    }
}

let someVehicle = Vehicle()
print("Транспорт: \(someVehicle.description)")
