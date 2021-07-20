//: [Previous](@previous)

import UIKit

// Task 5 Black Jack


var playersPoints: Int = 0
let cardsArray: [Int] = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

repeat {
    playersPoints += cardsArray[Int.random(in: 0..<cardsArray.count)]
    if playersPoints == 21 {
        print("Congratulations, u won! U got \(playersPoints) points")
        break
    }
    if playersPoints > 21 {
        print("Sorry, u lose! U got \(playersPoints) points")
    }

} while playersPoints < 21










//: [Next](@next)
