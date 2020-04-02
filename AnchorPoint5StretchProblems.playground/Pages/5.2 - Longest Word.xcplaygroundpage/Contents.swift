//: [Hashtags](@previous)
/*:
 # Tuesday Stretch Problem 5.2
 ## Longest Word In String
 ### Instructions
 - Write a function that takes a string and returns the biggest word in that string.
 - Make sure to remove punctuation and whitespace.
 ```
 longestWord("This string, has a gigantic! word in it...") // returns "gigantic"
 
 longestWord("one, two, three") // returns "three"
 ```
  - Note: Look up `NSCharacterSet` methods to remove whitespace and punctuation. Create the charSets as `NSMutableCharset` objects so you can combine the two CharSets. Call the `componentsSeperatedByCharacterInSet` method on the parameter string to get an array of strings after separating them by the charSets. Loop through the array to check against your return string length.
 
 ### Black Diamond 💎💎💎
 - Do this in an Objective-C project.
 */
import Foundation

let string1 = "This string, has a gigantic! word in it..."
let trimmedString = string1.replacingOccurrences(of: "!", with: "") .replacingOccurrences(of: ",", with: "")

func findLongestWord(word: String) -> String? {
    if let longestWord = word.components(separatedBy: " ").max(by: { $1.count > $0.count }) {
        return longestWord
    }
    
    return nil
}

let longestWord = findLongestWord(word: trimmedString)
print(longestWord?.count)



//: [Palindrome](@next)
