//: [Previous](@previous)

func containsDuplicate(_ nums: [Int]) -> Bool {
    var dupDict: [Int: Int] = [:]
    for num in nums {
        if let _ = dupDict[num] {
            return true
        } else {
            dupDict.updateValue(1, forKey: num)
        }
    }
    return false
}

containsDuplicate([1,2,3,2])
//: [Next](@next)
