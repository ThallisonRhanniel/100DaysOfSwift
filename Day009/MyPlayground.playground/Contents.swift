import Cocoa

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
