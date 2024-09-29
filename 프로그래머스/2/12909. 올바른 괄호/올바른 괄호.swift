import Foundation

var stack: [String] = []

func solution(_ s:String) -> Bool {
    var arr = Array(Array(s).reversed())

    while !arr.isEmpty {
        // 제공된 문자열
        let last = String(arr.removeLast())
        
        // 제공된 문자열의 첫 번째 글자가 ")"이고 Stack의 마지막 글자가 "("일 때 
        if last == ")" && !stack.isEmpty && stack.last! == "(" {
            stack.removeLast()
        } else {
            stack.append(last)
        }
        
    }
    
    return stack.isEmpty
    
}