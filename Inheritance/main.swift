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


//MARK: Наследование подклассом
print("\n//Наследование подклассом")

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
print(bicycle.hasBasket)

bicycle.currentSpeed = 15.0
print("Велосипед: \(bicycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Тандем: \(tandem.description)")


//MARK: Переопределение методов
print("\n//Переопределение методов")

class Train: Vehicle {
    override func makeNoise() {
        print("чу-чу")
    }
}

let train = Train()
train.makeNoise()


//MARK: Переопределения геттеров и сеттеров свойства
print("\n//Переопределения геттеров и сеттеров свойства")

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " на передаче \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Машина: \(car.description)")
