//: [Previous](@previous)

import UIKit

// Task 1 Разборчивые имена 

/// Логично что имя твое,
/// но обычно не стоит указывать my, mine и тд. в переменных.
let myName: String = "Artem"
let mySurname: String = "Drevinskiy"
/// Лучше называть более технически: `firstName` и `lastName`

/// Не ставим пробел после названия функции `displayName(`
func displayName (name: String) {
    let charactersFromName = Array(name)
    /// Отлично, но для этого не обязательно конвертировать в `Array`
    for index in charactersFromName {
        /// И если ты берешь по букве из слова, то переменная будет
        /// не `index`, а `char` или `letter`
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
/// Не ставим пробел после названия функции `displaySurname(`
/// Если функция называется `display...`, то она вряд-ли
/// должна возвращать строку, скорее сразу писать ее в консоль.
func displaySurname (surname: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    /// Тоже не обязательно, по идеи
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
/// А зачем нужна эта проверка?
if !resultString.isEmpty && resultString.count > 1 {
    print(resultString)
}

/// Почти правильно получилось. Я предпологаю, что должно быть:
/// Dre
/// vin
/// skiy
///
/// И можно было проще, у тебя как-то сложно получилось :)д
/// Вижу что функция сделана +- универсально, это хорошо, но,
/// по сути, overengineering. Т.е. больше потратил времени чем мог бы
/// на решение такой простой задачи.

//: [Next](@next)
