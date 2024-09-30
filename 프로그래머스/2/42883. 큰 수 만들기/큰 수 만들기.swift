import Foundation

func solution(_ number:String, _ k:Int) -> String {
    
    var stack: [Character] = []
    var remain = k 
    
    for num in number {
        while !stack.isEmpty && remain > 0 && stack.last! < num {
            stack.removeLast() 
            remain -= 1
        }
        stack.append(num)
    }
    
    if remain > 0 {
        stack = Array(stack.dropLast(remain))
    }
    
    return String(stack)
}