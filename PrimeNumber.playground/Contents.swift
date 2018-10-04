import Foundation

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

func forAnyUnknownNumber(requestRange: Double) {
    
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
    
    print("There are \(primeCounter) prime numbers and \(nonPrime) non prime numbers within \(Int(requestRange))")
}

func listPrimeNumber(requestRange: Double) -> Array<Any> {
    var primeArray: Array = [Double]()
    
    if Int(requestRange) == 1 {
        primeArray.append(1.0)
        print("1 is not prime number")
        return primeArray
        
    } else {
        for i in 1...Int(requestRange) {
            if checkPrimeNumber(requestNumber: Double(i)) == true {
                primeArray.append(Double(i))
            }
        }
    }
        
    return primeArray
}

listPrimeNumber(requestRange: 10)

