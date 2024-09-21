if let input = readLine() {
    
    var dic = [Int](repeating: 0, count: 10)
    var answer = 0
    
    String(input).forEach { char in
        if let digit = char.wholeNumberValue {
            dic[digit] += 1
        }
    }
    
    let maxValue = dic.sorted().last!
    let sum = dic[6] + dic[9]
    
    dic[6] = (sum + 1) / 2
    dic[9] = dic[6]
    
    if let max = dic.max() {
        print("\(max)")
    }
    
}
