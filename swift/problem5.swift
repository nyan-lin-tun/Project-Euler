func calcualteGCD(first: Int, second: Int) -> Int {
    if second == 0 {
        return first
    } 

    let second_new = first % second
    return calcualteGCD(first: second, second: second_new)
}

func calculateLCM(first: Int, second: Int) -> Int {
    return (first * second)/calcualteGCD(first: first, second: second)
}

var ansToHold = 1
var counter = 1
func calculateDivisibleBy1To20() -> Int {
    while (true) {
        counter += 1
        ansToHold = calculateLCM(first: ansToHold, second: counter)
        if counter == 20 {
            break
        }
    }
    return ansToHold
}
print(calculateDivisibleBy1To20())
