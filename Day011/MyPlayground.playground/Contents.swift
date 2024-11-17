import Cocoa


//This is like interfaces
protocol Identifiable {
    var id: String { get set }
}


struct User: Identifiable {
    var id: String
    var teste: String
}


func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

displayID(thing: User(id: "123", teste: "teste"))



protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}


protocol Employee: Payable, NeedsTraining, HasVacation { }


//Extensions Methods

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()


//This is computed property (propriedade calculada), so is not a method, i have to call this way
//
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

var teste1 = number.isEven

//This way is really a methodo, só a can call as if it were a function
extension Int {
    func isEven2() -> Bool {
        return self % 2 == 0
    }
}


var teste2 = number.isEven2()


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}


pythons.summarize()
beatles.summarize()



protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

//This provides a default value for a function identify(), when i use this interface, i dont need to create a identity method
extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct NewUser: Identifiable2 {
    var id: String
}

let twostraws = NewUser(id: "twostraws")
twostraws.identify()
