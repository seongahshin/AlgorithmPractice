var arr: [Int] = []
var dic = [0:0,1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0]

while let input = readLine() {
    arr.append(Int(input)!)
}

let ans = "\(arr[0] * arr[1] * arr[2])"

let ansArr = ans.compactMap { $0.wholeNumberValue }

for num in ansArr {
    dic[num]! += 1
}

for i in 0..<10 {
    if let A = dic[i] {
        print(String(A))
    }
}
