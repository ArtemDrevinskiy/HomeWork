//: [Previous](@previous)

import Foundation

// Task 2 Ферма Фибоначчи

func countOfRabbitsInMonths(_ months: Int) -> Int {
    var rabbitsPairsLastMonth = 0
    var rabbitsPairsThisMonth = 1
    var rabbitsPairsNextMonth = 0
    
    for _ in 1...months {
        rabbitsPairsNextMonth = rabbitsPairsLastMonth + rabbitsPairsThisMonth
        rabbitsPairsLastMonth = rabbitsPairsThisMonth
        rabbitsPairsThisMonth = rabbitsPairsNextMonth
    }
    return rabbitsPairsThisMonth * 2
}

var countOfRabbitsForSale = countOfRabbitsInMonths(_: 5) - 2
print("U can sell \(countOfRabbitsForSale) rabbits")

//: [Next](@next)
