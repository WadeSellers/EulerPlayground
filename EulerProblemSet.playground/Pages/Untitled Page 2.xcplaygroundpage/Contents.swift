//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// Problem 2

/*
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
*/

func sumOfFibonacciEvenTerms(maximumValueLimit: Int) -> Int {
    var firstNumber: Int = 0
    var secondNumber: Int = 1
    var result: Int = Int()
    var totalOfEvens: Int = Int()

    repeat {
        result = secondNumber + firstNumber
        if result % 2 == 0 {
            totalOfEvens = totalOfEvens + result
        }
        firstNumber = secondNumber
        secondNumber = result
    } while secondNumber <= maximumValueLimit

    return totalOfEvens
}

sumOfFibonacciEvenTerms(4000000)
