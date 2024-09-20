if let input = readLine() {
    let A = Int(input)!
    
    if 90 <= A && A <= 100 {
        print("A")
    } else if 80 <= A && A <= 89 {
        print("B")
    } else if 70 <= A && A <= 79 {
        print("C")
    } else if 60 <= A && A <= 69 {
        print("D")
    } else {
        print("F")
    }
}