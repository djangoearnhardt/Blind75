//: [Previous](@previous)

/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
 
 Example 1:
 
 Input: s = "()"
 Output: true
 Example 2:
 
 Input: s = "()[]{}"
 Output: true
 Example 3:
 
 Input: s = "(]"
 Output: false
 */

/// Add all opening characters. Check when a closing character exists, if the last element in the stack is the matching opening character
/// If the stack is empty at that end, then it isValid... all pairs have been matched in the right order.
func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    for character in s {
        switch character {
        case ")":
            if stack.isEmpty { return false }
            if stack.removeLast() != "(" { return false }
        case "}":
            if stack.isEmpty { return false }
            if stack.removeLast() != "{" { return false }
        case "]":
            if stack.isEmpty { return false }
            if stack.removeLast() != "[" { return false }
        default:
            stack.append(character)
        }
    }
    return stack.isEmpty
}

isValid("([])")

//: [Next](@next)
