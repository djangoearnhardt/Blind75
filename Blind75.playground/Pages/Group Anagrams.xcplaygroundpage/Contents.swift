//: [Previous](@previous)

/*
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:

 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
 Example 2:

 Input: strs = [""]
 Output: [[""]]
 Example 3:

 Input: strs = ["a"]
 Output: [["a"]]
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var anagramDict = [String: [String]]() // Key : Value Array
    for str in strs {
        let sortedStr = String(str.sorted())
        anagramDict[sortedStr, default: []] += [str]
    }
    return Array(anagramDict.values)
}

groupAnagrams(["eat","tea","tan","ate","nat","bat"])
//: [Next](@next)
