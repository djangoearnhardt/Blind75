//: [Previous](@previous)

/*
 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:

 Input: n = 3
 Output: ["((()))","(()())","(())()","()(())","()()()"]
 Example 2:

 Input: n = 1
 Output: ["()"]

 */

func generateParenthesis(_ n: Int) -> [String] {
    var stack = [String]()
    var res = [String]()
    
    func backtrack(openN: Int, closedN: Int) {
        if openN == n && closedN == n {
            res.append(stack.joined(separator: ""))
            return
        }
        
        if openN < n {
            stack.append("(")
            backtrack(openN: openN + 1, closedN: closedN)
            stack.removeLast()
        }
        
        if closedN < openN {
            stack.append(")")
            backtrack(openN: openN, closedN: closedN + 1)
            stack.removeLast()
        }
    }
    backtrack(openN: 0, closedN: 0)
    return res
}

//: [Next](@next)
