import Cocoa



// optional property
var age: Int? = nil
age = 38

var name: String? = nil
name = "Marco"

// if the variable is optional, i have to do this method for call variable
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// I can use a keyword guard to check if variable is null, if the condition is true, i can make a early return
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}


greet(nil);


let str = "5"
//This will create a Int?, because it is possible that the string may be null
let num = Int(str)
//If i put ! in the end of the conversion, it will forces the variable be created Int, but if the string is not a Int when a try to convert, the applicaiton will crash
let num2 = Int(str)!

//This make unwrapped optional, however this variable can be null em try to use
let age2: Int! = nil


func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

//Default/alternative value is funcion is null
//coalescing operators
//substantivo feminino Fusão; união, junção ou aderência do que estava separado. Processo através do qual os elementos dispersos se unem formando um todo maior.
let user = username(for: 15) ?? "Anonymous"

let names = ["John", "Paul", "George", "Ringo"]
//Empty Array
//let names:[String] = []

let beatle = names.first?.uppercased()


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//try more beautiful
if let result = try? checkPassword("password2") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}


//When i Use Init? i can create a struc that can return null,
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

var nomecara:String = "123456789"
var thisPersonCabHaveIdNull = Person(id: nomecara)



//TypeCast
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

//This is all Animal
let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
