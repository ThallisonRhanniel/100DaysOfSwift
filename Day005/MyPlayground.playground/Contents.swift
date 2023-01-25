import UIKit

//Functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

//call
printHelp()

//Function with parameters
func square(number: Int) {
    print(number * number)
}

square(number: 8)


//Function with return
func SquareWhithReturn(number: Int) -> Int {
    return number * number
}

let result = SquareWhithReturn(number: 8)
print(result)

//parameter labels
//Basicamente ele deixa eu adicionar 2 nomes para uma variavel o "TO" é o nome usado fora do método  e o "NAME" é para a parte interna do método
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

//Omitting parameter labels
//Remover a obrigatoriedade de escrever o tipo do parametro ao chamar a funcão

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)

// Ao adicionar a resistência, o swift entende que será um array, e posso chamar a funcão passando vários numeros que ele serão convertidos
func squareArray(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareArray(numbers: 1, 2, 3, 4, 5)

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}


//Try catch do swift

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//Quando eu adicionou o inout estou dizendo explicitamente que quero alterar o valor da variável que estou passando para a funcão
var myNum = 10


func doubleInPlace(number: inout Int) {
    number *= 2
}

//Esse &, é para dizer explicitamente que eu sei que a funcão vai alterar o valor da variável MyNUm
doubleInPlace(number: &myNum)
