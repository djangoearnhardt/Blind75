//: [Previous](@previous)

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var results = Array(repeating: 1, count: nums.count)
    
    // Fill the results array with the prefix values
    var prefix = 1
    for i in 0..<nums.count {
        results[i] = prefix
        prefix *= nums[i]
    }
    // Update the results array with the postfix values product
    var postfix = 1
    for i in (0..<nums.count).reversed() {
        results[i] *= postfix
        postfix *= nums[i]
    }
    return results
}

//: [Next](@next)
