var freq1 = [Int](repeating: 0, count: 26)
var freq2 = [Int](repeating: 0, count: 26)
var ans = 0

if let firstInput = readLine() {
    if let secondInput = readLine() {
        let firstNum = Array(firstInput).sorted()
        let secondNum = Array(secondInput).sorted()
    
        for char in firstNum {
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            freq1[index] += 1
        }
        
        for char in secondNum {
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            freq2[index] += 1
        }
        
        for i in 0..<freq1.count {
            let temp = max(freq1[i], freq2[i]) - min(freq1[i], freq2[i])
            ans += temp
        }
        
        
    }
}

print("\(ans)")