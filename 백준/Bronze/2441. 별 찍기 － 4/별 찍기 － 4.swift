if let input = readLine() {
    let A = Int(input)!
    
    for i in 0..<A {
        var temp = ""
        temp += String(repeating: " ", count: i)
        temp += String(repeating: "*", count: A-i)
        print(temp)
    }
    
}