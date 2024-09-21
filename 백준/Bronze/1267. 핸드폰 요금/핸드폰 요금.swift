if let _ = readLine() {
    
    if let secondInput = readLine() {
        let arr = secondInput.split(separator: " ").compactMap { Int($0) }
        
        var young = 0
        var minsick = 0
        
        arr.forEach { num in
            young += (num / 30 + 1) * 10
        }
        
        arr.forEach { num in
            minsick += (num / 60 + 1) * 15
        }
        
        if young > minsick {
            print("M \(minsick)")
        } else if young < minsick {
            print("Y \(young)")
        } else {
            print("Y M \(young)")
        }
    }
}
