//: [Previous](@previous)

import UIKit

// Task 1 Разборчивые имена 

let firstName = "Artem"
let lastNameBySyllables = ["Dre", "vin", "skiy"]

func displayName(name: String) {
    for character in name {
        print(character)
    }
}
displayName(name: firstName)
print("_")

func displayLastName(_ lastName: [String]) {
    for syllable in lastNameBySyllables {
        print(syllable)
    }
}
displayLastName(lastNameBySyllables)



//: [Next](@next)
