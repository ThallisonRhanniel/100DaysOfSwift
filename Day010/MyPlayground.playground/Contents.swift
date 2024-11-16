import Cocoa

//If a put FInal keyword in the class. ex: final class dog, this class cannot be inherited
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
           print("Woof!")
       }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
            print("Yip!")
        }
}

let poppy2 = Poodle(name: "Cachorro")
poppy.makeNoise()


class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

//the class when it is copied,the both variables is aim from the same space in memory, then if i changed either of the two variables, the both will change
var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)



class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}


for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//If i Change var for let, the code in the line 77 throw an error because the variable change their nature to const
class AnotherSinger {
    var name = "Taylor Swift"
}

let taylor = AnotherSinger()
taylor.name = "Ed Sheeran"
print(taylor.name)


// it's possible to initialize some variables in the line
class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}
