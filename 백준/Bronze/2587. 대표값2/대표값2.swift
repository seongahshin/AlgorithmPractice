var arr: [Int] = []

while let input = readLine() {
    arr.append(Int(input)!)
}

let sortedArr = arr.sorted()

var sum = 0

sortedArr.forEach { num in
    sum += num
}

let index = sortedArr.count / 2

print("\(sum/(sortedArr.count))")
print("\(sortedArr[index])")
