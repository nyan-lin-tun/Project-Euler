
func sumOfSquareOfNumbers(count: Int) -> Int {
    var total = 0
    for i in 1...count {
        total = total + (i * i)
    }
    return total
}

func squareOfSumOfNumbers(count: Int) -> Int {
    var total = 0
    for i in 1...count {
        total = total + i
    }
    return total * total
}

func differences(range: Int) -> Int {
    return squareOfSumOfNumbers(count: range) - sumOfSquareOfNumbers(count: range)
}

print(differences(range: 100))
