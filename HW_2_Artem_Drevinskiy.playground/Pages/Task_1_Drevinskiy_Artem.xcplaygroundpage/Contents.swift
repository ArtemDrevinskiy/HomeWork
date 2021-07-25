//: [Previous](@previous)

import UIKit

// Task 1 Разборчивые имена 

let myName: String = "Artem"
let mySurname: String = "Drevinskiy"

func displayName (name: String) {
    let charactersFromName = Array(name)
    for index in charactersFromName {
        print(index)
    }
}
displayName(name: myName)

/* 2-nd variant
 
func displayMyName (name: String) {
    for character in name {
        print(character)
    }
}
displayMyName(name: myName)
 
*/

print("_")
func displaySurname (surname: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    let charactersFromSurname = Array(surname)
    var stringToPrint = ""
    for (charIndex, character) in charactersFromSurname.enumerated() {
        if stringToPrint.isEmpty {
            stringToPrint = String(character)
        } else {
            stringToPrint += String(character)
            for index in vowels {
                if index.contains(character) {
                    if charIndex == (charactersFromSurname.count - 2) {
                        stringToPrint += String(charactersFromSurname[charIndex + 1])
                    }
                    print(stringToPrint)
                    stringToPrint = ""
                    break
                }
            }
        }
    }
    return stringToPrint
}

var resultString = displaySurname(surname: mySurname)
if !resultString.isEmpty && resultString.count > 1 {
    print(resultString)
}


//: [Next](@next)
