// MODULE 2 - PART 2: SETS & DICTIONARIES
//
// Written by Noah Sadir
//

import Foundation

/* MARK: SETS */

// Here are some ways you can declare a Set variable
var set1: Set<Int> = [1, 2, 3, 4, 5]
var set2: Set<Int> = Set<Int>()
var set3: Set<String>?
var set4: Set = [1, 2, 3]

// Sets have a similar interface to Arrays for common functions
// Since item order is not preserved with a Set, there is no
// .append() or .insert(at:) function
print("Set 1 has \(set1.count) elements: \(set1)")
set1.insert(6)
print("Set 1 after `6` added: \(set1)")
// <-- [RUN HERE] Notice anything about the output?
//                Are the elements in a predictable order? Why not?
print("")

// But unlike Arrays, Sets do not contain repeating values
// If you add an existing item, the Set remains unaffected
var arr1: [Int] = [1, 2, 3, 4, 5, 6]
print("BEFORE `5` INSERTED:")
print("Arr 1: \(arr1)")
print("Set 1: \(set1)")
print("Set 2: \(set2)")
arr1.append(5)
set1.insert(5)
set2.insert(5)
print("\nAFTER `5` INSERTED:")
print("Arr 1: \(arr1)")
print("Set 1: \(set1)")
print("Set 2: \(set2)")
// <-- [RUN HERE] Notice a few things:
//                1. the array now has an extra `5`
//                2. Set 1 is unaffected since it already has a `5`
//                3. Set 2 didn't originally have a `5`, but now it does
print("")

// Since sets utilize hashing, they are much more efficient at retrieving
// specific values compared to an array.
var bigArr: [String] = ["quis.", "id", "aliquam.", "ullamcorper", "mi,", "vel", "quis", "commodo", "ultricies", "adipiscing", "quam", "dignissim", "nulla.", "dictumst.", "hac", "dolor", "sit", "nec.", "tincidunt.", "justo", "Suspendisse", "Fusce", "turpis", "eget", "Donec", "In", "Lorem", "sem", "Integer", "tempus", "porta.", "varius", "euismod", "at", "bibendum", "nec", "erat", "porttitor", "finibus.", "sapien", "arcu,", "massa", "leo", "vitae.", "Sed", "egestas", "maximus", "elit.", "lobortis", "malesuada", "consectetur", "mollis.", "pharetra.", "laoreet", "Curabitur", "gravida", "consequat", "pulvinar", "platea", "Maecenas", "mollis", "habitasse", "Cras", "potenti.", "vitae", "ex", "arcu.", "accumsan", "ultrices", "ipsum", "eleifend", "sapien,", "velit", "ipsum,", "ut", "eu", "amet,", "rhoncus", "non", "mattis", "elit", "Nullam", "Proin", "tempor"]
var bigSet: Set<String> = ["quis.", "id", "aliquam.", "ullamcorper", "mi,", "vel", "quis", "commodo", "ultricies", "adipiscing", "quam", "dignissim", "nulla.", "dictumst.", "hac", "dolor", "sit", "nec.", "tincidunt.", "justo", "Suspendisse", "Fusce", "turpis", "eget", "Donec", "In", "Lorem", "sem", "Integer", "tempus", "porta.", "varius", "euismod", "at", "bibendum", "nec", "erat", "porttitor", "finibus.", "sapien", "arcu,", "massa", "leo", "vitae.", "Sed", "egestas", "maximus", "elit.", "lobortis", "malesuada", "consectetur", "mollis.", "pharetra.", "laoreet", "Curabitur", "gravida", "consequat", "pulvinar", "platea", "Maecenas", "mollis", "habitasse", "Cras", "potenti.", "vitae", "ex", "arcu.", "accumsan", "ultrices", "ipsum", "eleifend", "sapien,", "velit", "ipsum,", "ut", "eu", "amet,", "rhoncus", "non", "mattis", "elit", "Nullam", "Proin", "tempor"]
var start: CFAbsoluteTime = 0
var diff: CFAbsoluteTime = 0
start = CFAbsoluteTimeGetCurrent()
bigArr.contains("pharetra.") // <-- Key line of code
diff = CFAbsoluteTimeGetCurrent() - start
print("Array retrieval: \(Int(diff * 1000000)) microseconds")
start = CFAbsoluteTimeGetCurrent()
bigSet.contains("pharetra.") // <-- Key line of code
diff = CFAbsoluteTimeGetCurrent() - start
print("Set retrieval: \(Int(diff * 1000000)) microseconds")
// <-- [RUN HERE] The code above might look a little complicated;
//                just focus on the two key lines of code.
//                Notice that Sets can perform the same operation much faster.
print("")




/* MARK: DICTIONARIES */

// Here are some ways you can initialize a dictionary
var dict1: [String: Double] = ["Apple": 0.99, "Banana": 0.59, "Strawberries": 1.99, "Grapes": 2.99, "Orange": 1.29]
var dict2: [String: Double] = [String: Double]()
var dict3: [String: Double]?

// The syntax for accessing a dictionary entry is similar to an Array, but
// instead of using an index, we access entries by their key.
print("Price of Apple is \(dict1["Apple"])")
// <-- [RUN HERE] What is the return type when accessing a dictionary entry?
print("")

// Notice that the output is an optional type.
// This is because it's possible to attempt to access a dictionary entry
// which doesn't exist.
var entry1: Double? = dict1["Apple"]
var entry2: Double? = dict1["Pear"]
print("dict1[\"Apple\"] is \(entry1)")
print("dict1[\"Pear\"] is \(entry2)")
// <-- [RUN HERE] See why a dictionary entry is an optional type?
print("")

// Now let's add an entry for "Pear"
// Notice that we can access the key directly, no need to make a function call
// (such as Map.put() in Java)
dict1["Pear"] = 1.29
print("dict1[\"Pear\"] is \(dict1["Pear"])")
// <-- [RUN HERE] Notice how the entry used to be nil, but now is 1.29
print("")

// Since dictionary entries are optional, we need to unwrap them in some way.
var bananaPrice: Double = dict1["Banana"] ?? 0.00
var peachPrice: Double = dict1["Peach"] ?? 0.00
print("Price of banana is \(bananaPrice)")
print("Price of peach is \(peachPrice)")
// <-- [RUN HERE] Notice how there's no entry for peach, so it defaults to 0.00
//                Also notice the lack of an optional wrapper now that we've
//                specified a fallback value.
print("")

// Of course, optionals can be handled in a number of ways.
// In this case it may not be appropriate to default to a value like 0, but
// but rather signal an error
if let safePeachPrice: Double = dict1["Peach"] {
    print("Price of peach is \(safePeachPrice)")
} else {
    print("Price for peach not found!")
}
// <-- [RUN HERE] Hopefully you can see the purpose (and flexibility)
//                of optional types in Swift.
print("")




print("*** SET & DICTIONARY PRACTICE ***")
// Now that you've explored how arrays work in Swift, it's time to practice.
// TODO: Refer to Module 2 docs to implement this part

let animalSet: Set<String> = ["Giraffe", "Zebra", "Elephant", "Panda", "Lion"]

// [1] Declare a String-Set with Zebra (can be done in one line)
/* BEGIN CODE */

/* END CODE */

// Validate your `mySet` declaration. Also note two useful functions of Set
if !mySet.contains("Zebra") {
    print("--> FAILURE: mySet does not contain Zebra")
} else if !mySet.isSubset(of: animalSet) {
    print("--> FAILURE: mySet is not a subset of animalSet")
} else {
    print("SUCCESS: mySet contains Zebra and is a subset of animalSet")
}
// <-- [RUN HERE] If you created this set properly, this should output "SUCCESS..."

// [2] Declare an optional String-Set, but don't initialize it
/* BEGIN CODE */

/* END CODE */

// [3] Insert "Giraffe" into optionalSet.
/* BEGIN CODE */

/* END CODE */

// [4] Check if optionalSet contains "Giraffe"
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] optionalSet should NOT contain Giraffe at this point

// [5] Initialize optionalSet with "Cow", "Elephant"
// (can be done in one line)
/* BEGIN CODE */

/* END CODE */

// [6] Insert "Giraffe" into optionalSet again
/* BEGIN CODE */

/* END CODE */

// [7] Check if optionalSet contains "Giraffe"
/* BEGIN CODE */

/* END CODE */
// <-- [RUN HERE] optionalSet SHOULD contain Giraffe at this point

print("optionalSet size: \(optionalSet?.count)")

// [8] Insert "Giraffe" into optionalSet again
/* BEGIN CODE */

/* END CODE */

print("optionalSet size: \(optionalSet?.count)")
// <-- [RUN HERE] The set should remain unchanged.
//                This is an important property of sets!
