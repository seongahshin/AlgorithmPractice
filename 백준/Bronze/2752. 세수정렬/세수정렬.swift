if let input = readLine() {
    let arr = input.split(separator: " ").compactMap { Int($0) }
    let sortedArr = arr.sorted()
    print("\(sortedArr[0]) \(sortedArr[1]) \(sortedArr[2])")
}
