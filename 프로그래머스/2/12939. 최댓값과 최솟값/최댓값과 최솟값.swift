func solution(_ s:String) -> String {
    let str = s.split(separator: " ").compactMap{ Int($0) }
    let max = str.max()
    let min = str.min()
    return "\(min!) \(max!)"
}