if let input = readLine() {
    let arr = input.split(separator: " ").compactMap { Int($0) }
    
    let A = min(arr[0], arr[1])
    let B = max(arr[0], arr[1])
    
    if A != B {
        let sum = B - A - 1
        var tempArr: [Int] = []
        
        print("\(sum)")
        
        for num in A + 1 ..< B {
            tempArr.append(num)
        }
        
        let answer = tempArr.map { String($0) }.joined(separator: " ")
        print(answer)
    } else {
        print("0")
    }
}
