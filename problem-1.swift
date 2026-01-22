Day 1 – String Problem (High-Frequency Interview Question)
🔹 Problem: First Non-Repeating Character

Given a string, find the index of the first non-repeating character.
If it doesn’t exist, return -1.

Input: "leetcode"
Output: 0

Input: "loveleetcode"
Output: 2

func findNonRepeatingChar(input: String) -> Int{
    let characters = Array(input)
    var frequency  = [Character: Int]()

    for char in characters {
        frequency[char, default : 0] += 1
    }

    for i in 0..<characters.count {
        if frequency[characters[i]] == 1 {
            return i
        }
    }
    return 1
}
print(findNonRepeatingChar(input: "leetcode"))
print(findNonRepeatingChar(input: "loveleetcode"))