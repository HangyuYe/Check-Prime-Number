//Copyright SoftChain Foundation Ltd. 2018, All Rights Reserved
//Playground - noun: a place where people can play

//Copyright SoftChain Foundation Ltd. 2018, All Rights Reserved
//Playground - noun: a place where people can play

import Foundation

class PrimeNumber {
    
    //Check given number are prime number or not
    func checkPrimeNumber(requestNumber: Double) -> Bool {
        
        var remainderArray: Array = [Double]()
        var n: Double = 1
        var counter = 0
        
        for _ in 1...Int(requestNumber) {
            
            let remainder = requestNumber.truncatingRemainder(dividingBy: n)
            remainderArray.append(remainder)
            
            n += 1
        }
        
        for i in remainderArray {
            
            if i == 0.0 {
                counter += 1
            }
        }
        
        if counter < 3 {
            return true
        } else {
            return false
        }
    }
    
    //Check how many prime numbers in this range
    func forAnyUnknownNumber(requestRange: Double) -> String {
        
        var primeCounter = -1
        var nonPrime = 0
        
        if requestRange == 1 {
            print("Range 1 to 1 is not make any sense")
        } else {
            for i in 1...Int(requestRange) {
                if checkPrimeNumber(requestNumber: Double(i)) == true {
                    primeCounter += 1
                } else {
                    nonPrime += 1
                }
            }
        }
        
        return "There are \(primeCounter) prime numbers and \(nonPrime) composite numbers under \(Int(requestRange))"
    }
    
    //List all numbers in a given range
    func listPrimeNumber(requestRange: Double) -> Array<Any> {
        var primeArray: Array = [Int]()
        
        if Int(requestRange) == 1 {
            primeArray.append(1)
            print("1 is not prime number")
            return primeArray
            
        } else {
            for i in 1...Int(requestRange) {
                if checkPrimeNumber(requestNumber: Double(i)) == true {
                    let convertIndex = Int(i)
                    primeArray.append(convertIndex)
                }
            }
        }
        
        print("In range \(Int(requestRange)) have \(primeArray.count) prime numbers, here it is: \(primeArray), but 1 is not belong to prime number ever!")
        return primeArray
    }
}

//Call function to check prime number
let unknownNumber: Double = 17

let checkPrimeNumber = PrimeNumber()
let resultOfunknownNumber = checkPrimeNumber.checkPrimeNumber(requestNumber: unknownNumber)
if resultOfunknownNumber == true {
    print("Yes!")
} else {
    print("No!")
}

//Call function to get how many prime number in a given range!
let givenRange: Double = 100

let forRangeOfNumbers = PrimeNumber()
let resultOfRangeOfNumbers = forRangeOfNumbers.forAnyUnknownNumber(requestRange: givenRange)

print(resultOfRangeOfNumbers)

//Call function to list all prime number in a give range!
let listRange: Double = 100

let forListOfRange = PrimeNumber()
let resultOfArray = forListOfRange.listPrimeNumber(requestRange: listRange)









