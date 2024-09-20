if let input = readLine() {
    let arr = input.split(separator: " ").compactMap { Int($0) }.sorted()
    
    if arr[0] == arr[1] && arr[0] == arr[2] && arr[1] == arr[2] {
        threeNumSame(arr[0])
    } else if arr[0] == arr[1] && arr[1] != arr[2] {
        twoNumSame(arr[0])
    } else if arr[0] == arr[2] && arr[1] != arr[2] {
        twoNumSame(arr[0])
    } else if arr[1] == arr[2] && arr[1] != arr[0] {
        twoNumSame(arr[1])
    } else if arr[0] != arr[1] && arr[0] != arr[2] && arr[1] != arr[2] {
        noNumSame(arr[2])
    }
    
    func noNumSame(_ num: Int) {
        print("\(num * 100)")
    }
    
    func twoNumSame(_ num: Int)  {
        print("\(1000 + (num) * 100)")
    }
    
    func threeNumSame(_ num: Int) {
        print("\(10000 + (num) * 1000)")
    }
    
}
