//: [Previous](@previous)

/*
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 */

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

//: [Next](@next)
