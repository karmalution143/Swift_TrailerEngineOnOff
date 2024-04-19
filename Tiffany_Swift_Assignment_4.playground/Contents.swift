import Foundation

protocol Trailer {
    var brand: String { get }
    func startEngine()
    func stopEngine()
    var engineIsOn: Bool { get set }
}

protocol ElectricalSystem {
    var batteryLevel: Double { get }
    func chargeBattery()
    func checkBatteryLevel()
    var batteryIsCharged: Bool { get set }
}

class Camper : Trailer, ElectricalSystem {
    
    var brand: String
    var engineIsOn: Bool
    var batteryLevel: Double
    var batteryIsCharged: Bool
    
    init() {
        self.brand = "Ford Magestic"
        self.engineIsOn = false
        self.batteryLevel = 100.00
        self.batteryIsCharged = false
    }
        
    func startEngine() -> Void {
        if !self.engineIsOn {
            print("Engine on \(self.brand) has been turned on")
            self.engineIsOn = !self.engineIsOn
        }
        else {
            print("Engine on \(self.brand) is already on")
        }
    }
    
    func stopEngine() -> Void {
        if self.engineIsOn {
            print("Engine on \(self.brand) has been turned off")
            self.engineIsOn = !self.engineIsOn
        }
        else {
            print("Engine on \(self.brand) is already off")
        }
    }
    
    func chargeBattery() -> Void {
        if !self.batteryIsCharged {
            print("Battery is now fully charged")
            self.batteryIsCharged = !self.batteryIsCharged
        }
        else {
            print("Battery has already been charged")
        }
    }
    
    func checkBatteryLevel() -> Void {
        if !self.batteryIsCharged {
            print("Battery is fully charged")
            self.batteryLevel = 100
        }
        else {
            print("Please recharge the battery")
        }
    }
    
    func printBatteryLevel() -> Void {
        print("Battery Level is: \(self.batteryLevel)")
    }
}

var camper = Camper()

camper.startEngine()
camper.stopEngine()
camper.chargeBattery()
camper.checkBatteryLevel()
camper.printBatteryLevel()
