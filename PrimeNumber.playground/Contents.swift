import Foundation

let unknownNumber: Double = 4
var remainderArray: Array = [Double]()

func checkPrimeNumber(requestNumber: Double) -> Bool {

    var n: Double = 1
    var counter = 0

    for _ in 1...Int(unknownNumber) {
        
        let remainder = unknownNumber.truncatingRemainder(dividingBy: n)
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

checkPrimeNumber(requestNumber: unknownNumber)


