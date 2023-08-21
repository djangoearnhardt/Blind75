//: [Previous](@previous)

func maxArea(_ height: [Int]) -> Int {
    var result = 0
    var leftPointer = 0
    var rightPointer = height.count - 1
    
    while leftPointer < rightPointer {
        let area = (rightPointer - leftPointer) * min(height[leftPointer], height[rightPointer])
        result = max(area, result)
        if height[leftPointer] < height[rightPointer] {
            leftPointer += 1
        } else {
            rightPointer -= 1
        }
    }
    return result
}

//: [Next](@next)
