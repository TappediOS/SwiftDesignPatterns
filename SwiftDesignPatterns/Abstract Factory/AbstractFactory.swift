//
//  AbstractFactory.swift
//  SwiftDesignPatterns
//
//  Created by jun on 2020/10/16.
//

import Foundation


class AbstractFactory {
    static func main() -> [String] {
        guard let factory = CarFactory.getFactory(car: Cars.sports) else { return [] }
        
        let car = Car(carType: .sports, floor: factory.createFloorplan(), suspension: factory.createSus(), drive: factory.createDrivetrain())
        return car.print()
    }
}


class CarFactory {
    func createFloorplan() -> Floorplan {
        fatalError()
    }
    
    func createSus() -> Suspension {
        fatalError()
    }
    
    func createDrivetrain() -> Drivetrans {
        fatalError()
    }
    
    static func getFactory(car: Cars) -> CarFactory? {
        var factory: CarFactory?
        switch car {
        case .compact:
            factory = CompactCarFactory()
        case .sports:
            factory = SportcarFactory()
        case .suv:
            return nil
        }
        
        return factory
    }
}

class CompactCarFactory: CarFactory {
    override func createFloorplan() -> Floorplan {
        return StandardFloorplan()
    }
    
    override func createSus() -> Suspension {
        return RoadSus()
    }
    
    override func createDrivetrain() -> Drivetrans {
        return FrontWeel()
    }
}

class SportcarFactory: CarFactory {
    override func createFloorplan() -> Floorplan {
        return ShortFloorplan()
    }
    
    override func createSus() -> Suspension {
        return RaceSus()
    }
    
    override func createDrivetrain() -> Drivetrans {
        return RearWeel()
    }
}
