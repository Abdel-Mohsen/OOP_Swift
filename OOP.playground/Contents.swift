import UIKit



class Car{
    // class properties
    internal var Wheels: Int
    internal var Seats: Int
    internal var EnginePower: Int
    
    // init (class constructor)
    public init(_wheels wheels: Int, _seats seats: Int, _enginePower enginePower: Int){
        self.Wheels = wheels
        self.EnginePower = enginePower
        self.Seats = seats
    }
    
    
    /// This method shows all the information that related to the car class
    public func ShowInfo() ->(){
        print("This car has " + String(Wheels) + " wheels, " + String(Seats) + " seats and the engine power is " + String(EnginePower))
    }
    
    /// This method takes one parameter and return the name of the car's engine
    public func ShowEngine(_engineName engineName: String) ->(){
        print("This car has " + engineName + " engine")
    }
    
}



// Derived class
class BMW : Car{
    // class properties
    private var Speed: Int
    private var ModelName: String = "BMW M235i"
    
    
    // init (class constructor)
    public init(_speed speed: Int, _engineName ModelName: String, _wheels wheels: Int, _seats seats: Int, _enginePower enginePower: Int) {
        self.Speed = speed
        self.ModelName = ModelName
        super.init(_wheels: wheels, _seats: seats, _enginePower: enginePower)
    }
    
    
    /// This method shows the model of this BMW
    public func Model() ->(){
        print("The model for this BMW is " + ModelName)
    }
    
    /// This method shows all the information that related to the BMW class
    public override func ShowInfo() {
        print("This BMW has " + String(Wheels) + " ," + String(Seats) + " seats, engine power " + String(EnginePower) + " speed " + String(Speed) + " and the model is " + ModelName)
    }
    
}





// Derived class
class Tesla : Car{
    // class properties
    private var Speed: Int
    private var Tank: String
    private var ModelName: String
    
    
    // init (class constructor)
    public init(_wheels wheels: Int, _seats seats: Int, _enginePower enginePower: Int, _speed speed: Int, _tank tank: String, _modelName modelName: String){
        self.ModelName = modelName
        self.Speed = speed
        self.Tank = tank
        super.init(_wheels: wheels, _seats: seats, _enginePower: enginePower)
        
    }
    
    /// This method shows the model of this Tesla car
    public func Model() ->(){
        print("This Tesla's model is " + ModelName)
    }
    
    /// This method shows all the information that related to the Tesla class
    public override func ShowInfo() {
        print("This Tesla has \(Wheels) wheels , \(Seats) seats , engine power is \(EnginePower) , speed of \(Speed) , tank is \(Tank) and the model of this tesla is \(ModelName)")
    }
    
    
    
    /// This method takes two parameters and returen the name of the Tesla's engine and the numbers of mirrors
    /// (Note): this method is overloading to the method in the base class
    public func ShowEngine(_modelNumber modelNumber: String, _mirrors mirrors: Int) ->(){
        print("This Tesla has \(ModelName) engine of the model number \(modelNumber) and \(mirrors) mirrors ")
    }
    
}





class Mercedes : Car{
    // class properties
    private var Speed: Int
    private var modelName: String = "Mercedes-Benz CLS"
    
    // init (class constructor)
    public init(_speed speed: Int, _modelName modelName: String, _wheels wheels: Int, _seats seats: Int, _enginePower enginePower: Int){
        self.Speed = speed
        self.modelName = modelName
        super.init(_wheels: wheels, _seats: seats, _enginePower: enginePower)
    }
    
    /// This method shows the model of this Mercedes
    public func Model() ->(){
        print("This mercedes's model is \(modelName)")
    }
    
    /// This method shows all the information that related to the Mercedes class
    public override func ShowInfo() {
        print("This Mercedac has \(Wheels) wheels , \(Seats) seats , engine poser of \(EnginePower) , speed of \(Speed) and the model is \(modelName) ")
    }
    
}





// protocol
protocol Animal {
    func canSwim() -> Bool
}


class Fish : Animal{
    func canSwim() -> Bool {
        return true
    }
    
}



// main

    // initialize classes
    let car = Car(_wheels: 4, _seats: 7, _enginePower: 1200)
    let mercedes = Mercedes(_speed: 250, _modelName: "Mercedes-Benz CLS", _wheels: 4, _seats: 6, _enginePower: 2500)
    let bmw = BMW(_speed: 300, _engineName: "mo-T5", _wheels: 4, _seats: 5, _enginePower: 3000)
    let tesla = Tesla(_wheels: 4, _seats: 1, _enginePower: 4500, _speed: 800, _tank: "electricity", _modelName: "Tesla-row-Y7")
    
    // base class reference variable that points to derived class object
    let car2:Car = Tesla(_wheels: 4, _seats: 4, _enginePower: 500, _speed: 80, _tank: "electricity", _modelName: "Tesla-row-W44")
    
    car.ShowInfo()
    // dummy engine name
    car.ShowEngine(_engineName: "Z5-t4")
    
    print("---------------------------------------------------------")
    
    bmw.ShowEngine(_engineName: "wbm-Z8")
    bmw.ShowInfo()
    bmw.Model()
    
    print("---------------------------------------------------------")
    
    mercedes.Model()
    mercedes.ShowInfo()
    mercedes.ShowEngine(_engineName: "mer-78")
    
    print("---------------------------------------------------------")
    
    tesla.ShowInfo()
    tesla.ShowEngine(_engineName: "Tesla-TT")
    tesla.ShowEngine(_modelNumber: "123654-cc", _mirrors: 4)
    
    
    print("---------------------------------------------------------")
    
    
    car2.ShowEngine(_engineName: "C2")
    car2.ShowInfo()
    
