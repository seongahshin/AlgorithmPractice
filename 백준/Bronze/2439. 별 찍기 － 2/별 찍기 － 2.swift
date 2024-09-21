if let input = readLine() {
    let A = Int(input)!
    var temp = ""
    
    for i in 1..<A+1 {
        temp = ""
        temp += String(repeating: " ", count: A - i)
        temp += String(repeating: "*", count: i)
        print(temp)
    }
}