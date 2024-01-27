// MODULE 2 - PART 1: ARRAYS
//
// Written by Noah Sadir
//

import Foundation

// Below are a few examples of how you can declare an Array type in Swift:
var arr1: [Int] = [1, 4, 3, 2, 8, 9, 3, 4, 2, 5, 10, 3, 3, 2]
var arr2: [Int] = [Int]()
var arr3: [Int]?

// Some other less-than-common ways to declare an Array:
var arr4: [Int]
var arr5: Array<Int> = [Int]()
var arr6: [Int] = Array<Int>()
var arr7: Array = [1, 2, 3]
var arr8 = [1, 2, 3]

// To get the number of elements in an array, use `.count`
// Think of it like `.size()` in Java or `len()` in Python
print("arr1 has size \(arr1.count) with elements: \(arr1)")
print("arr2 has size \(arr2.count) with elements: \(arr2)")
if let arr3 = arr3 {
    print("arr3 has size \(arr3.count) with elements: \(arr3)")
} else {
    print("arr3 is nil!")
}
// BEFORE RUNNING: open the console if it isn't open already
//                 (press rectangular button in lower-right corner)
// <-- [RUN HERE] Is the output what you expected?
print("")

// To append elements to the end of an array, use .append()
print("arr2 before: \(arr2)")
arr2.append(3)
arr2.append(1)
arr2.append(2)
print("arr2 after:  \(arr2)")
// <-- [RUN HERE] Do the before/after values of arr2 match what you expect?
print("")

// Of course, you can insert elements at any index in the Array:
arr2.insert(4, at: 1)
print("arr2 after single insertion: \(arr2)")
// <-- [RUN HERE] Is the number `4` where you expected?
print("")

// Removing an element also has a similar syntax:
arr2.remove(at: 1)
print("arr2 after single removal: \(arr2)")
// <-- [RUN HERE] Which element was just removed?
print("")

// You can also add all the values of another Array
print("arr1 before: \(arr1)")
print("arr2: \(arr2)")
arr1.append(contentsOf: arr2)
print("arr1 after: \(arr1)")
// <-- [RUN HERE] Do the before/after values of arr1 match what you expect?
print("")

// Arrays also include other useful operations such as max and min
print("arr1 min: \(arr1.min() ?? 0)")
print("arr1 max: \(arr1.max() ?? 0)")
// <-- [RUN HERE] See how Swift arrays are similar in functionality to Java lists?
print("")

// Array also contains a built-in sort function
print("arr2 unsorted: \(arr2)")
print("arr2 sorted: \(arr2.sorted())")
// <-- [RUN HERE] How does Swift sort elements by default?
print("")

// If you'd like to sort elements in a custom manner, you can do so via closures.
print("arr1 before sorting: \(arr1)")
arr1.sort(by: { a, b in
    if a.isMultiple(of: 2) && !b.isMultiple(of: 2) { // (if a number is a multiple of 2, it is even)
        return false
    } else if !a.isMultiple(of: 2) && b.isMultiple(of: 2) {
        return true
    } else {
        return a < b
    }
})
print("arr1 after sorting: \(arr1)")
// <-- [RUN HERE] How are elements sorted here?
print("")

// Arrays can also be optionals themselves, like arr3
print("arr3 before initializing: \(arr3)")
arr3 = []
print("arr3 after initializing: \(arr3)")
// <-- [RUN HERE]
print("")

// Notice how arr3 is an optional type (allowing it to be nil)
// This means we need to do some extra work to access it, since we
// can't guarantee it's a valid array.
if let arr3Unwrapped = arr3 {
    print("arr3: \(arr3)")
    print("arr3Unwrapped: \(arr3Unwrapped)")
}
// <-- [RUN HERE] Notice the difference with how optionals are represented?
print("")

var arrNil: [Int]?
print("arr3 before: \(arr3),  arrNil before: \(arrNil)")
// One way to perform operations on an optional type is to use the `?` suffix:
// Using ? specifies that the operation should only occur if the object is not nil.
arr3?.append(1)
arrNil?.append(1)
print("arr3 after:  \(arr3), arrNil after:  \(arrNil)")
// <-- [RUN HERE] Notice how we performed the same operation, yet arrNil is unaffected?
print("")




print("*** ARRAY PRACTICE ***")
// Now that you've explored how arrays work in Swift, it's time to practice.
// TODO: Refer to Module 2 docs to implement this part

var animalArray: [String] = ["Lion", "Zebra", "Elephant", "Turtle"]
var optionalArray: [Int]?

// [2] Is there a logical error with accessing index `4` in a 4-element array?
print("4th element of animalArray: \(animalArray[4])")

// [3] The operation below is quite dangerous. How can we make it safer?
let unwrappedArray = optionalArray!
print(unwrappedArray)


// [4] Initialize optionalArray
/* BEGIN CODE */

/* END CODE */

// [5, 6, 7] Add elements to optionalArray
/* BEGIN CODE */

/* END CODE */

// [8] Print the 5th element of optionalArray
/* BEGIN CODE */

/* END CODE */
