import UIKit

//FOr Loppings

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

//while loop

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//repeate loop

var numberr = 1

repeat {
    print(numberr)
    numberr += 1
} while numberr <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}


repeat {
    print("This is false")
} while false

// exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// basicamente eu nomiei o primeiro looping, para quando eu chamar o break, eu poder sair dos dois loopings ao mesmo tempo
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Vou pular todos os as vezes que or esto da divisão for impar.
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

//Looping infinito
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
