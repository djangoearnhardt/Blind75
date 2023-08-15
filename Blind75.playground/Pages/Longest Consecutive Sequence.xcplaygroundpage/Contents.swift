//: [Previous](@previous)

/*
 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

 You must write an algorithm that runs in O(n) time.

 Example 1:

 Input: nums = [100,4,200,1,3,2]
 Output: 4
 Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
 Example 2:

 Input: nums = [0,3,7,2,5,8,4,6,0,1]
 Output: 9

 */

func longestConsecutive(_ nums: [Int]) -> Int {
    let numSet = Set(nums)
    var longest = 0
    
    for num in nums {
        if !numSet.contains(num - 1) {
            var length = 0
            while numSet.contains(num + length) {
                length += 1
            }
            longest = max(length, longest)
        }
    }
    return longest
}

//: [Next](@next)