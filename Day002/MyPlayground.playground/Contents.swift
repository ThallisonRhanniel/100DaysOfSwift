import UIKit

//Arrays

let john = "Jhon Lennon"
let paul = "Paul MacCartney"
let geroge = "Geroge Harrison"
let Ringo = "Ringo Stars"

let beatles = [john, paul, geroge, Ringo]
beatles[1]

//Set Uma lista não ordenada, onde os valores são não podem se repetir.
let colors = Set(["red", "green", "blue", ])


let colors2 = Set(["red", "blue", "red", "blue", "Blue", "green"])

//Tuplas , tem tamanho fixo, não pode mudar o tipo da tupla

var name = (first: "Taylor", last: "Swift")
name.0
name.first

//Exemplos

let address = (house: 555, street: "Taylor wift", city: "Nashville")
let set = Set(["aardvark", "ästronaut", "Azaleia"])
let pythons = ["Ëric", "graham" , "Jhon", "Michael"]


address.0
set.first;
pythons[0]


//Dicionários
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

heights["Ed Sheeran"]

//Dicionários podem adicionar um valor padrão

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
//Retorna um valor Default caso não encontre o que eu busquei na lista na lista
favoriteIceCream["Charlotte", default: "Unknown"]

//Colecões vazias

var teams = [String: String]()
teams["Paul"] = "Red"

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results = Array<Int>()


//enum

enum Result {
    case success
    case failure
}

let resultEnum = Result.failure

//enum com valores

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")


//enum de inteiros , a lista começa com 0
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

// Modifiquei a lista para começar com 1, logo a terra passa a ser o numero 3.
enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}


let earthValue = Planet2(rawValue: 2)
