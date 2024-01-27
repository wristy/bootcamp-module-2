// MODULE 2 - PART 3: LOOPS
//
// Written by Noah Sadir
//

import Foundation

/* MARK: WHILE LOOPS */

// While loops follow a very similar syntax to most other languages
// Even if you don't know Swift, you'll likely understand the code below:
var w: Int = 174237
print("Break down the digits of \(w) using while loop:")
while w > 0 {
    var digit: Int = w % 10
    print("While loop: Current digit is \(digit)")
    w /= 10
}
// <-- [RUN HERE] Is the output what you expected?

// A somewhat uncommon variant of this is the repeat-while loop.
// Just like the do-while loop in Java, it runs the code block
// before checking the condition.
w = 174237
print("\nBreak down the digits of \(w), but with repeat-while:")
repeat {
    var digit: Int = w % 10
    print("Repeat-while loop: Current digit is \(digit)")
    w /= 10
} while (w > 0)
// <-- [RUN HERE] Is the output the same?

// In the above case, the output for while and repeat-while is the same.
// In what situation could the output differ? Let's see:
var z: Int = 0
print("\n(begin while)")
// While loop where terminating condition is already met.
while z > 0 {
    print("CODE BLOCK EXECUTED")
}
print("(end while)\n")
// Repeat-while loop where terminating condition is already met.
print("(begin repeat-while)")
repeat {
    print("CODE BLOCK EXECUTED")
} while (z > 0)
print("(end repeat-while)")
// <-- [RUN HERE] Does the code block execute for both while and repeat-while?
//                Why not?
print("")

// As you can see, repeat-while loops can be helpful for code that you want to
// run at least once, even if the terminating condition is already met.




/* MARK: FOR LOOPS */

// You can use ... to specify a range between two values (inclusive)
for i in 0...10 {
    print("For loop (...): iteration \(i)")
}
// <-- [RUN HERE] Is the output what you expected?
print("")

// Ranges can also be written to exclude the upper bound (useful for indexing)
for i in 0..<10 {
    print("For loop (..<): iteration \(i)")
}
// <-- [RUN HERE] Is the output what you expected?
print("")

// Strides can be used when you want to increment by a value different that 1
for i in stride(from: 0, to: 100, by: 10) {
    print("For loop (stride): skip to \(i)")
}
// <-- [RUN HERE] Is the output what you expected?
print("")

// For loops can also be used to iterate through data structures, such as Arrays
var fruits: [String] = ["Apple", "Banana", "Strawberries", "Grapes", "Orange"]
for fruit in fruits {
    print("For loop (default array indexing): Current fruit is \(fruit)")
}
// <-- [RUN HERE] Is the output what you expected?
print("")

// You can also index through the Array manually
for i in 0..<fruits.count {
    print("For loop (manual array indexing): Current fruit is \(fruits[i])")
}
// <-- [RUN HERE] Is the output the same as the previous loop?
print("")

// You can also easily iterate through dictionary entries
var fruitPrices: [String: Double] = [
    "Apple": 0.99,
    "Banana": 0.59,
    "Strawberries": 1.99,
    "Grapes": 2.99,
    "Orange": 1.29
]
for (fruit, price) in fruitPrices {
    print("For loop (dictionary): Price of \(fruit) is $\(price)")
}
// <-- [RUN HERE] Is the output what you expected?
print("")

// The output above reveals an important property of dictionaries.
// Unlike Arrays, you cannot expect Dictionary entries (a type of Set)
// to be in the order they were added.
fruitPrices["Grapefruit"] = 1.99
fruits.append("Grapefruit")
// List the prices with Grapefruit added to the Dictionary
for (fruit, price) in fruitPrices {
    print("Dictionary insertion: Price of \(fruit) is $\(price)")
}
print("")
// List the fruits with Grapefruit added to the Array
for fruit in fruits {
    print("Array insertion: Current fruit is \(fruit)")
}
// <-- [RUN HERE] Is the order of the output what you expected?
//                If you've taken CS 1332, you probably know what's going on
//                (hint: it involves hashing)
print("")




print("*** LOOP PRACTICE ***")
// Now that you've explored how loops work in Swift, it's time to practice.
// TODO: Refer to Module 2 docs to implement this part

var numArr: [Int] = Array(repeating: 0, count: 5)

// [1] Rewrite this code to use a loop
/* BEGIN CODE */
numArr[0] = 10
numArr[1] = 20
numArr[2] = 30
numArr[3] = 40
numArr[4] = 50
/* END CODE */
print("numArr: \(numArr)")
// <-- [RUN HERE] The output should be unchanged

// Here, we have a dictionary which maps message ID values to their
// corresponding message contents.
var messages: [String: String] = [
    "l8y48": "Have to go now. Bye!",
    "cwhrp": "Hello!",
    "id2qb": "Hey, how's it going?",
    "m7h3s": "Goodbye!",
    "rlb2n": "Good to hear. I'm learning Swift too!",
    "b2vbc": "Pretty good, just learning some Swift."
]

// [2] Print out each message ID and their contents.
//     Reference the docs for the desired output format.
print("\nMessage Data:")
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] Does this seem like the order of a normal conversation?
//                Perhaps we're missing some data about which messages
//                come before the other.


let messageOrder: [String] = ["cwhrp", "id2qb", "b2vbc", "rlb2n", "l8y48", "m7h3s"]
// We want to output the messages in order.
// The `messageOrder` array contains the true order of the messages.
print("\nEXPECTED OUTPUT:")
print("Hello!")
print("Hey, how's it going?")
print("Pretty good, just learning some Swift.")
print("Good to hear. I'm learning Swift too!")
print("Have to go now. Bye!")
print("Goodbye!")
// <-- [RUN HERE] See what the output should look like.

// [3] Write a while loop which prints out the messages in order.
//     Refer to the docs for tips & tricks.
print("\n(WHILE) MESSAGES: ")
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] Check if your output matches the example.

// [4] Do the same thing, but with a repeat-while loop
print("\n(REPEAT-WHILE) MESSAGES: ")
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] Check if your output matches the example.

// [5] Do the same thing, but with a for loop using default iterator
print("\n(FOR ITERATOR) MESSAGES: ")
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] Check if your output matches the example.

// [6] Do the same thing, but with a for loop using a range
print("\n(FOR RANGE) MESSAGES: ")
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] Check if your output matches the example.
