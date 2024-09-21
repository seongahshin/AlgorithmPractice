var inputs: [Int] = []

while let input = readLine() {
    if let number = Int(input) {
        inputs.append(number)
    }
}

let filterdArr = inputs.filter { $0 % 2 != 0 }

if filterdArr.count > 0 {
    var sum = filterdArr[0]
    var small = filterdArr[0]
    
    for i in 1..<filterdArr.count {
        sum += filterdArr[i]
        small = min(small, filterdArr[i])
    }
    
    print("\(sum)")
    print("\(small)")

} else {
    print("-1")
}
