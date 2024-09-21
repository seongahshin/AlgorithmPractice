var arr: [Int] = []
var sum = 0

while let input = readLine() {
    arr.append(Int(input)!)
}

arr.forEach { num in
    sum += num
}

var diff = sum - 100
var tempArr = arr

outerLoop: for i in 0..<arr.count - 1 {
    for p in 1..<arr.count {
        if arr[i] + arr[p] == diff {
            tempArr.remove(at: p)
            tempArr.remove(at: i)
            break outerLoop
        }
    }
}

tempArr.sorted().forEach { num in
    print("\(num)")
}
