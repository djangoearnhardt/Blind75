//: [Previous](@previous)

/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 */

func isPalindrome(_ s: String) -> Bool {
    let stringArray = Array(s)
    var leftPointer = 0
    var rightPointer = s.count - 1
    
    while leftPointer < rightPointer {
        if !stringArray[leftPointer].isASCII {
            leftPointer += 1
        } else if !stringArray[rightPointer].isASCII {
            rightPointer -= 1
        } else if stringArray[leftPointer].lowercased() != stringArray[rightPointer].lowercased() {
            return false
        }
        leftPointer += 1
        rightPointer -= 1
    }
    return true
}

extension Character {
    func isASCII() {
        self.isLetter || self.isNumber
    }
}

//: [Next](@next)
