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
    
    var primeCounter = 0
    var nonPrime = 0
    
    for i in 1...Int(requestRange) {
        if checkPrimeNumber(requestNumber: Double(i)) == true {
            primeCounter += 1
        } else {
            nonPrime += 1
        }
    }
    
    print("There are \(primeCounter) prime numbers and \(nonPrime) non prime numbers within \(Int(requestRange))")
}


forAnyUnknownNumber(requestRange: 200)


