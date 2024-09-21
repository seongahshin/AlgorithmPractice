var answer = 0

if let firstInput = readLine() {
    let A = Int(firstInput)!
    
    if let secondInput = readLine() {
        let arr = secondInput.split(separator: " ").compactMap { Int($0) }.sorted()
        
        if let thirdInput = readLine() {
            let B = Int(thirdInput)!
            var firstIndex = 0
            var lastIndex = arr.count - 1
            
            while firstIndex < lastIndex {
                let sum = arr[firstIndex] + arr[lastIndex]
                
                if sum < B {
                    firstIndex += 1
                } else if sum > B {
                    lastIndex -= 1
                } else {
                    answer += 1
                    firstIndex += 1
                    lastIndex -= 1
                }
            }
            
        }
    }
    
    print("\(answer)")
}
