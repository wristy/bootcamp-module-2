// MODULE 2 - PART 4: FUNCTIONS & CLOSURES
//
// Written by Noah Sadir
//

import Foundation

/* MARK: FUNCTION */

// Swift's function (aka method) syntax is similar to most languages,
// but with a few peculiarities.

// Here's an example of a very basic function
func printHelloWorld() {
    print("Hello, World")
}

// Calling a function is also pretty straightforward:
printHelloWorld()
// <-- [RUN HERE] Is the output what you expected?
print("")

// Arguments can be passed into a function like this:
func printNumbers(count: Int) {
    for i in 0...count {
        print(i)
    }
}

print("Print Numbers (`count` label):")
// The above function accepts an argument of type Int
// You can call it like this:
printNumbers(count: 20)
// Before running, can you guess what the output will be?
// <-- [RUN HERE] Is the output what you expected?
print("")

// IMPORTANT: You must include the argument label in a function call.
// By default, this is the variable name (`until` in the example above)
// You can add a custom label like this:
func printNumbers(until count: Int) {
    for i in 0...count {
        print(i)
    }
}

print("Print Numbers (`until` label):")
// Notice that you still use `count` as the variable name within the function
// but the label used when calling is `until`
printNumbers(until: 20)
// <-- [RUN HERE] Do argument labels change the output at all? (Probably not)
print("")

// You can also use _ to exclude the label altogether, though it's usually
// not advisable since it can impact the readability of your code.
func printNumbers(_ count: Int) {
    for i in 0...count {
        print(i)
    }
}

print("Print Numbers (NO label):")
// Now you can call the function in a more compact manner, but it may not be
// as self explanatory without the argument label.
printNumbers(20)
// <-- [RUN HERE] The output should again be the same.
print("")

// Return types are handled a bit differently than, say, C/C++ or Java
func divideByTwo(val: Double) -> Double {
    return val / 2
}

// However, the function call is similar to most languages.
let dividedVal: Double = divideByTwo(val: 10.0)
print("divideByTwo() -> 10.0 / 2 = \(dividedVal)")
// <-- [RUN HERE]
print("")

// Of course, function arguments can be optionals
func concatenateStrings(first: String, second: String?) -> String {
    guard let second = second else {
        return first
    }
    return first + second
}

// In the above example, if the second string is nil, the result is the first
// string, otherwise the concatenation is returned.
let concatHelloWorld: String = concatenateStrings(first: "Hello", second: " World!")
let concatHelloNil: String = concatenateStrings(first: "Hello", second: nil)

print("concatenateStrings(\"Hello\", \", World\") -> \(concatHelloWorld)")
print("concatenateStrings(\"Hello\", nil) -> \(concatHelloNil)")
// <-- [RUN HERE] You'll likely encounter quite a few functions that accept nil arguments
print("")

// You can also have optional return types.
func safelyDivide(_ numerator: Int, by denominator: Int) -> Int? {
    if denominator == 0 {
        return nil
    }
    return numerator / denominator
}

let div10by5: Int? = safelyDivide(10, by: 5)
let div10by0: Int? = safelyDivide(10, by: 0)

if let div10by5 = div10by5 {
    print("safelyDivide(10, by: 5) -> 10 / 5 = \(div10by5)")
} else {
    print("safelyDivide(10, by: 5) -> 10 / 5 = [Division Error]")
}

if let div10by0 = div10by0 {
    print("safelyDivide(10, by: 0) -> 10 / 0 = \(div10by0)")
} else {
    print("safelyDivide(10, by: 0) -> 10 / 0 = [Division Error]")
}

// <-- [RUN HERE] Optional return types can be helpful when you're unsure if
//                a function can succeed given its input
print("")

// You can also return tuples if you need multiple return values:
func safelyDivideWithMessage(_ numerator: Int, by denominator: Int) -> (result: Int?, message: String) {
    if denominator == 0 {
        return (nil, "Divide by zero error")
    }
    return (numerator / denominator, "Success")
}

// You may remember that you don't *have* to specify the type with Swift,
// but for readability purposes we'll include it here:
let div10by5Tuple: (result: Int?, message: String) = safelyDivideWithMessage(10, by: 5)
let div10by0Tuple: (result: Int?, message: String) = safelyDivideWithMessage(10, by: 0)
print("safelyDivideWithMessage(10, by: 5) -> \(div10by5Tuple.message): \(div10by5Tuple.result)")
print("safelyDivideWithMessage(10, by: 0) -> \(div10by0Tuple.message): \(div10by0Tuple.result)")
// <-- [RUN HERE] Remember that the result is still an optional type

/* MARK: CLOSURE */

// Blocks of code can be used as variables themselves.
// These are known in Swift as closures, but you may also know them as lambdas.
let finishHandler: () -> Void = {
    print("Function finished executing")
}

// These closures are typically passed in as function arguments and called
// within the function.
func countAndNotify(until count: Int, onFinish: () -> Void) {
    for i in 0...count {
        print(i)
    }
    onFinish()
}

// As you can see, closures can offer more flexibility with functions.
// The example here lets us run some code (like a custom message)
// after the function finished counting.
countAndNotify(until: 10, onFinish: finishHandler)
// Before running, walk through the code and figure out what the output
// should be.
// <-- [RUN HERE] Is the output what you expected?

// You can also include the code block within the function call without
// needing to declare a new variable
countAndNotify(until: 10, onFinish: {
    print("This code should run after the count!")
})
// <-- [RUN HERE] Is the output what you expected?

// You can also pass in arguments within the closure itself
// For example, let's say we wanted to pass in the total count
// for the function above:
//                                              ~~~~~
func countAndNotify(until count: Int, onFinish: (Int) -> Void) {
    for i in 0...count {
        print(i)
    }
    // pass count into closure call
    onFinish(count)
}

// Then, we can call the function like this:
countAndNotify(until: 15, onFinish: { totalCount in
    print("Successfully counted until \(totalCount)")
})
// <-- [RUN HERE] Notice how 15 gets passed into the closure block.
print("")

print("Execute function that takes a while:")

// It's important to keep in mind that some closures may complicate
// the execution order.
func somethingThatTakesAWhile(whenFinished: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        whenFinished()
    }
}

print("1")
somethingThatTakesAWhile(whenFinished: {
    print("2")
})
print("3")
// BEFORE RUNNING: What order will these statements print out?
// <-- [RUN HERE] Does the output match what you expected?
print("")

print("*** FUNCTIONS & CLOSURES PRACTICE ***\n")
// Now that you've explored how functions & closures work in Swift,
// it's time to practice.
// TODO: Refer to Module 2 docs to implement this part

// - Simulated API call
// - Practice loops & collections w/ custom sort
// - Use Swift's built in sort function
// - Binary search?


// You may remember that back in the Arrays section of this module,
// you were shown a sort() method that let you specify your own sorting
// criteria.

// One common instance of closures is array sorting.
// Arrays contain a built-in sort() method that lets you specify the
// sorting criteria via a closure.

var cities: [String] = ["Chicago", "New York", "Atlanta", "Boston", "San Francisco", "Seattle", "Los Angeles", "Miami", "Nashville"]
var cities2: [String] = ["Chicago", "New York", "Atlanta", "Boston", "San Francisco", "Seattle", "Los Angeles", "Miami", "Nashville"]

print("Original:       \(cities)\n")

// By default, strings are sorted in alphabetical order:
cities.sort()

print("Alphabetical:   \(cities)\n")

// <-- [RUN HERE] What if we weren't interested in alphabetical order?

// [1] Use the .sort(by:) function to sort the array from shortest name to
//     longest. Check the docs for reference material if needed
/* BEGIN CODE */

/* END CODE */
print("Length (.sort): \(cities)")


// [2] Now try sorting the array manually using selection sort.
//     Use the pseudocode in the docs as reference.
/*
Int min = 0
String temp = ""

for i in 0 to (arr_length - 1):
 min = i
 for j in (i + 1) to arr_length:
    if str_length(arr[j]) < str_length(arr[min]):
        min = j
 temp = arr[i]
 arr[i] = arr[min]
 arr[min] = temp
*/
func selectionSort(_ input: [String]) -> [String] {
    var arr: [String] = input
    /* BEGIN CODE */
    var min: Int = 0
    var temp: String = ""
    
    for i in 0..<(arr.count - 1) {
        min = i
        for j in (i + 1)..<arr.count {
            if arr[j].count < arr[min].count {
                min = j
            }
        }
        temp = arr[i]
        arr[i] = arr[min]
        arr[min] = temp
    }
    /* END CODE */
    return arr
}
cities2 = selectionSort(cities2)
print("Length (sel):   \(cities2)")
