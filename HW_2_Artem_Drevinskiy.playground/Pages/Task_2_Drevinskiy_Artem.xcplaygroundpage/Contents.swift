//: [Previous](@previous)

import Foundation

// Task 2 Ферма Фибоначчи

/// Лучше назвать `countOfRabbitsInMonth(_ monthNumber:)`
/// или `rabbitsLeft(inMonthNumber:)`
func countOfRabbitsIn(months: Int) -> Int {
    var rabbitsPairsLastMonth = 0
    var rabbitsPairsThisMonth = 1
    var rabbitsPairsNextMonth = 0
    
    for _ in 1...months {
        rabbitsPairsNextMonth = rabbitsPairsLastMonth + rabbitsPairsThisMonth
        rabbitsPairsLastMonth = rabbitsPairsThisMonth
        rabbitsPairsThisMonth = rabbitsPairsNextMonth
    }
    /// Кажется, что ты считаешь именно количество кролей а не их пар и что это умножение не нужно
    return rabbitsPairsThisMonth * 2
}

var countOfRabbitsForSale = countOfRabbitsIn(months: 5) - 2
print("U can sell \(countOfRabbitsForSale) rabbits")


/// Не вникал сильно в твою логику, но результат не торт
/// Там был намек на задачу про числа Фибоначчи. Но, на самом деле,
/// я просто хорошо замаскировал, саму эту задачу. Т.е., по сути, просто
/// нужно посчитать N-ое число для месяца номер N :D


//: [Next](@next)
