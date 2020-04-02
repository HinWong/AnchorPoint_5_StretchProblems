//: [Palindrome](@previous)
/*:
 # Thursday Stretch Problem 5.4
 ## Greatest Common Divisor
 ### Instructions
 - Read about recursion.
 - Note Google's little joke when you search recursion in Chrome.
 - Create a function that returns the greatest common divisor of two numbers using recursion. (function calling itself).
 
 ### Black Diamond 💎💎💎
 - Go back to past stretch problems that have used loops and redo them using recursion.
 */
import Foundation

/**
 
 percent sign: Remove number 2 from number 1 as many times as possible and give me the rest. (modulus)

 9 % 3  ---> returns 0
 10 % 3 --->  returns 1
 20 % 5 ---> returns 0
 
 */

func gcdRecursiveEuklid(_ m: Int, _ n: Int) -> Int {
    
    let x = m % n
    
    // if x does not equal to 0
    if x != 0 {
        return gcdRecursiveEuklid(n, x)
    } else {
        return n
    }
}

gcdRecursiveEuklid(20, 200)



