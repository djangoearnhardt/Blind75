//: [Previous](@previous)

/*
 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

 Example 1:

 Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
 Output: 6
 Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
 Example 2:

 Input: height = [4,2,0,3,2,5]
 Output: 9

 */

func trap(_ height: [Int]) -> Int {
    guard !height.isEmpty else { return 0 }
    var leftPointer = 0
    var rightPointer = height.count - 1
    var leftMax = height.first!
    var rightMax = height.last!
    var result = 0
    
    while leftPointer < rightPointer {
        if leftMax < rightMax {
            leftPointer += 1
            leftMax = max(leftMax, height[leftPointer])
            result += leftMax - height[leftPointer]
        } else {
            rightPointer -= 1
            rightMax = max(rightMax, height[rightPointer])
            result += rightMax - height[rightPointer]
        }
    }
    return result
}

//: [Next](@next)
