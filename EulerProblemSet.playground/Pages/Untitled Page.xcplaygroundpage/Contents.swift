//: Euler problems from projecteuler.net
// Questions and Answers for them

import UIKit

// Question 1:
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

// My breakdown:
// for numbers from 1 - 999
// if number is a multiple of 3 or 5, add it a running total
// What's the total in the end?

func totalOfThreeFiveArray(startNumber startNumber: Int, endNumber: Int) -> Int {
    var sumOfThreeFiveMultiples: Int = Int()
    for number in startNumber...endNumber {
        if number % 3 == 0 || number % 5 == 0 {
            sumOfThreeFiveMultiples = sumOfThreeFiveMultiples + number
        }
    }
    return sumOfThreeFiveMultiples
}

totalOfThreeFiveArray(startNumber: 1, endNumber: 999)
