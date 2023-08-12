//: [Previous](@previous)

/*
 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 Example 1:

 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]
 Example 2:

 Input: nums = [1], k = 1
 Output: [1]
 */

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var hashMap = [Int: Int]() // num value : frequency of num
    for num in nums {
        hashMap[num, default: 0] += 1
    }
    var mostFrequent = [Int]()
    for _ in 0..<k {
        if let max = hashMap.max(by: { $0.value < $1.value }) {
            mostFrequent.append(max.key)
            hashMap.removeValue(forKey: max.key)
        }
    }
    return mostFrequent
}

//: [Next](@next)
