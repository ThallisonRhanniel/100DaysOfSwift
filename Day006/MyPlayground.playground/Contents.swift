import UIKit

var greeting = "Hello, playground"
greeting = "Hee hee"


//Create a Closure(FUNCTION) I can call without passing a parameter
let driving = {
    print("I'm driving in my car")
}

driving()


//Create a Closure(FUNCTION) I can call without passing a parameter
let drivingWithParameter = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingWithParameter("London")


let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


//Basicly i create a function that can run another function
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

//() is optional in this case but i can call travel()
travel {
    print("I'm driving in my car in the city")
}


//I create a function that can run another function but this function has a parameter, then i need to pass a function to my function that accept a parameter
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


//Same as above, but i run a string function that need to return a string, then a put this string in variable description
func AnotherTravel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//Some ways a can call this function
AnotherTravel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

AnotherTravel { place -> String in
    return "I'm going to \(place) in my car"
}

AnotherTravel { place in
    return "I'm going to \(place) in my car"
}

AnotherTravel { place in
    "I'm going to \(place) in my car"
}

AnotherTravel {
    "I'm going to \($0) in my car"
}



func travelWithTwoParameter(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

//Tentar chamar isso aqui olhar par aos exmeplo anteriores, sem ser dessa forma
travelWithTwoParameter {
    "I'm going to \($0) at \($1) miles per hour."
}


func YesAnothertravel() -> (String) -> Void {
    var counter = 1

        return {
            print("II'm going to \($0) -  \(counter)")
            counter += 1
        }
}


let result = YesAnothertravel()
result("London")
result("Paris")
result("Brasil")
result("Bahia")




