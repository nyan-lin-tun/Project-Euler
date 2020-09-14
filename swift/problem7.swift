
var nThPrime = 0
var flag = 0
var counter = 0
while true {
    counter += 1
    if counter.isPrime {
        flag += 1
        nThPrime = counter

        if flag == 10001 {
            break
        }
    }
}
print(nThPrime)


//Thanks to isPrime Extension from https://stackoverflow.com/questions/28058291/nth-prime-number-in-swift

extension Int {
    var isPrime: Bool {
        if self <  2 { return false }
        let squareRoot = Self(Double(self).squareRoot())
        if squareRoot * squareRoot == self { return false }
        for i in 2..<Self(Double(self).squareRoot().rounded(.up)) where self % i == 0 {
           return false
        }
        return true
    }
}