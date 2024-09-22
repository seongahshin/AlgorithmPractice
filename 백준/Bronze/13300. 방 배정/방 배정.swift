var checkArr = [1: [0,0], 2: [0,0], 3: [0,0], 4: [0,0], 5:[0,0], 6: [0,0]]
var totalRoomNum = 0

if let firstInput = readLine() {
    let arr = firstInput.split(separator: " ").compactMap { Int($0) }
    let _ = arr[0]
    let maxCount = arr[1]
    
    while let input = readLine() {
        let studentArr = input.split(separator: " ").compactMap { Int($0) }
        let gender = studentArr[0]
        let grade = studentArr[1]
        
        checkArr[grade]?[gender] += 1
        
    }
    
    for arr in checkArr.values {
        
        if arr[0] > maxCount {
            if arr[0] % 2 == 0 {
                totalRoomNum += (arr[0] / 2)
            } else {
                totalRoomNum += (arr[0] / 2 + 1)
            }
        } else if arr[0] <= maxCount && arr[0] != 0 {
            totalRoomNum += 1
        }
        
        if arr[1] > maxCount {
            if arr[1] % 2 == 0 {
                totalRoomNum += (arr[1] / 2)
            } else {
                totalRoomNum += (arr[1] / 2 + 1)
            }
        } else if arr[1] <= maxCount && arr[1] != 0 {
            totalRoomNum += 1
        }
    }
}

print("\(totalRoomNum)")