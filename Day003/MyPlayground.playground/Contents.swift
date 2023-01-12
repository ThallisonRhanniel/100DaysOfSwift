import UIKit

//operacÕes Aritimeticas

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore


// retorna o resto da mutiplicacão do segundo valor
// O Segundo valor é repetido até que ele se aproxime do primeiro valor ou a soma dê o numero exato
// Ex1: 4 + 4 + 4 = 12 Sobra 1
//Ex2: 5+ 5 = 10 Sobra 3
let remainder = 13 % secondScore
let remainder2 = 13 % 5

//Operator overload

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//----
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//Comparacão

let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1

firstScore1 < secondScore1
firstScore1 >= secondScore1

"Taylor" <= "Swift"

//Combine conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//ternary operator

let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//switch case

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    //Adiciona essa opcão caso de queira que a execucão continue
    fallthrough
default:
    print("Enjoy your day!")
}


//Range operators

let newScore = 85

switch newScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

