//: [Previous](@previous)

/*
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 */

func isAnagram(_ s: String, _ t: String) -> Bool {
    s.sorted()  == t.sorted()
}

//: [Next](@next)
