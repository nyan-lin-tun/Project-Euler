
var ans:[Int] = []
for first in stride(from: 999, to: 99, by: -1) {
    for second in stride(from: 999, to: 99, by: -1) {
        let result = first * second
        if String(result).elementsEqual(String(result).reversed()) {
            ans.append(result) 
        }
    }
}
var actualAns = ans.sorted()
print(actualAns.last)
