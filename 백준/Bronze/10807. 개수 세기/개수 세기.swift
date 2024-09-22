var ans = 0

if let firstInput = readLine() {
    if let secondInput = readLine() {
        let arr = secondInput.split(separator: " ").compactMap { Int($0) }
        
        if let thirdInput = readLine() {
            if let findNum = Int(thirdInput) {
                arr.forEach { num in
                    if findNum == num {
                        ans += 1
                    }
                }
            }
        }
        
    }
}

print("\(ans)")
