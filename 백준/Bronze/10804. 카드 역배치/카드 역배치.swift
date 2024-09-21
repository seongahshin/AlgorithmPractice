var fixedArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

while let input = readLine() {

    let arr = input.split(separator: " ").compactMap { Int($0) }
    let A = arr[0] - 1
    let B = arr[1] - 1
    let sum = A + B
    
    for i in A..<sum/2 + 1 {
        let temp = fixedArr[i]
        fixedArr[i] = fixedArr[sum - i]
        fixedArr[sum - i] = temp
    }
    
}

print("\(fixedArr.map{ String($0) }.joined(separator: " "))")