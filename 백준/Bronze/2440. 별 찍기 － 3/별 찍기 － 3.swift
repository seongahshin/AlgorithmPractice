if let input = readLine() {
    let A = Int(input)!
    
    for i in 1..<A+1 {
        print(String(repeating: "*", count: A-i+1))
    }
}