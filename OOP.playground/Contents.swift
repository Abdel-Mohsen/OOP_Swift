import UIKit


// --------------------------------- Inheritance and Polymerphism ------------------------  //

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



// --------------------------------------------------------------------------------------- //

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



// -------------------------------------------------------------------------------------- //



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



// --------------------------------------------------------------------------------------  //



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



// -------------------------------------------------------------------------------------  //




// ########################################### Protocol ################################# //



protocol Animal {
    func canSwim() -> Bool
}


class Fish : Animal{
    func canSwim() -> Bool {
        return true
    }
    
}


// ######################################################################################## //
