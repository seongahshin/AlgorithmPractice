let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }
var stack: [(height: Int, index: Int)] = [(100000001, 0)]
var answer: [Int] = []

for towerIndex in 0..<arr.count {
    let height = arr[towerIndex]
    
    while !stack.isEmpty && stack.last!.height < height {
        stack.removeLast()
    }
    
    print(stack.last!.index, terminator: " ")
    
    stack.append((height, towerIndex + 1))
    
}