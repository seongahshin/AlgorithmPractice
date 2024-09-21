if let input = readLine() {
    let A = Int(input)!
    let B = 2 * A - 1
    var count = 1
    var vacantCount = B/2
    
    for i in 1..<B + 1 {
        if i % 2 != 0 {
            var temp = ""
            temp += String(repeating: " ", count: vacantCount)
            temp += String(repeating: "*", count: count)
            count += 2
            vacantCount -= 1
            print(temp)
        }
    }
}
