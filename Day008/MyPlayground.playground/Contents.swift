import Cocoa

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"


struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}


let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


struct Progress {
    var task: String
    var amount: Int {
        willSet {
            //This executes before the variable value is assigned
            print("\(task) is now \(amount)%")
        }
        didSet {
            //This executes after the variable value is assigned
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


//Arrays
var toys = ["Woody"]
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


// struct forces me to pass an initial paramter em a call, but is not necessary, if a create init method
//Example => var user = User(username: "twostraws")
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Thallison"




//self is this in c#
struct NewPerson {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy Scruct
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

//I Have to use Keyword Lazy to force a property be a lazy property
struct AnotherPerson {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

//property lazy three is just called when i call thir property directly like this ed.familyTree
var ed = AnotherPerson(name: "Ed")
ed.familyTree

// I can add a static variable that will preserve the value when i create another instances from student
struct Student {
    nonisolated(unsafe) static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

print(Student.classSize)


//Private Methods
struct PrivateIdPerson {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}


let manu = PrivateIdPerson(id: "12345")
manu.identify()



//Default Values
struct Book {
    var title: String = "Harry POtter"
    var author = "Unknown"
    var pageCount = 0
    var sales:Int
}

var myBook = Book(title:"IOS", author: "Me" ,  pageCount: 10, sales: 2)
print(myBook)


var myBook2 = Book(sales: 20)
print(myBook2)
