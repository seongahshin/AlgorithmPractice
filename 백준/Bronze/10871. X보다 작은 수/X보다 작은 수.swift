if let input = readLine() {
    let firstInput = input.split(separator: " ").compactMap { Int($0) }
    
    let N = firstInput[0]
    let X = firstInput[1]
    
    if let secondInput = readLine() {
        let A = secondInput.split(separator: " ").compactMap{ Int($0) }
        let result = A.filter { $0 < X }
        
        print(result.map{ String($0) }.joined(separator: " "))
    }
    
}