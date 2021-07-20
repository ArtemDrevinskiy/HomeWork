//: [Previous](@previous)

import UIKit

// Task 2 Друзья путешественники


let friendsAmountOfSavings: [Double] = [671, 980, 120]

var minimalBudget = friendsAmountOfSavings[0]
for i in 1...friendsAmountOfSavings.count-1
{
    if minimalBudget > friendsAmountOfSavings[i]
    {
        minimalBudget = friendsAmountOfSavings[i]
    }
}

print("Max amount u can spend on tour is: \(minimalBudget / 2)$")



//: [Next](@next)
