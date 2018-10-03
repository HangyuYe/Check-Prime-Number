import Foundation

let unknownNumber: Double = 17022

func checkPrimeNumber() {
    //var x = 0
    var n: Double = 1
    var remainderArray: Array = [Any]()
    //var counter = 0

    for _ in 1...Int(unknownNumber) {
        var remainder: Double
        
        remainder = unknownNumber / n
        
        remainderArray.append(remainder)

        n += 1
    }
    print(remainderArray)


}

checkPrimeNumber()

