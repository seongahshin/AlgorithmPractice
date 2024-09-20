if let input = readLine() {
    let firstInput = input.split(separator: " ").compactMap { Int($0) }
    let A = firstInput[0]
    let B = firstInput[1]
    
    print("\(A+B)")
}