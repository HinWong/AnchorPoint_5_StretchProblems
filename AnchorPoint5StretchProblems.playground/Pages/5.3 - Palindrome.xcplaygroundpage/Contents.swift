//: [Longest Word](@previous)
/*:
 # Wednesday Stretch Problem 5.3
 ## Palindrome
 ### Instructions
 - Make a function that takes in a string and returns if it is a palindrome (true/false).
 ```
 palindrome("thanks") -> false
 palindrome("rAcecar") -> true
 ```
 - Then ignore spaces.
 ```
 palindrome("dammit im mad") -> true
 palindrome("this is totally a palindrome") -> false
 ```
 ### Black Diamond 💎💎💎
 - Ignore punctuation.
 */
import Foundation

//Pass in a string to check if it is a palindrome
let string1 = "daMMITt,....im mad"

//Cleans up the string to return all lowercased strings (no spaces)
let trimmedString = string1.lowercased().replacingOccurrences(of: "[^a-z]+", with: "", options: .regularExpression)

func isPalindrome(value: String) -> Bool {
    //Check if a string is the same string in reverse
    return value == String(value.reversed())
}

isPalindrome(value: trimmedString)


//: [Greatest Common Divisor](@next)
