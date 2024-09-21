while let input = readLine() {
    let arr = input.split(separator: " ").compactMap { Int($0) }
    
    var zeroCount = 0
    var oneCount = 0
    
    for num in arr {
        if num == 0 {
            zeroCount += 1
        } else {
            oneCount += 1
        }
    }
    
    if zeroCount == 1 && oneCount == 3 {
        print("A")
    } else if zeroCount == 2 && oneCount == 2 {
        print("B")
    } else if zeroCount == 3 && oneCount == 1 {
        print("C")
    } else if zeroCount == 4 {
        print("D")
    } else if oneCount == 4 {
        print("E")
    }
}
