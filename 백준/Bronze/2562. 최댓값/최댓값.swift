var arr: [Int] = []

// 9개의 입력을 받음
for _ in 0..<9 {
    if let input = readLine(), let number = Int(input) {
        arr.append(number)
    }
}

var maxValue = arr[0]
var maxIndex = 0

for i in 1..<arr.count {
    if arr[i] > maxValue {
        maxIndex = i
        maxValue = arr[i]
    }
}

print("\(maxValue)")
print("\(maxIndex+1)")