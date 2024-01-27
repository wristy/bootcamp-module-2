# Module 2: More Swift Basics

In this module, we'll go over collections, loops, functions and closures.

Things you'll accomplish:
- [ ] Create and manipulate Array objects
- [ ] Create and manipulate Set objects
- [ ] Create and manipulate Dictionary objects
- [ ] Utilize while loops
- [ ] Utilize for loops
- [ ] Streamline code using loops
- [ ] Create basic functions
- [ ] Utilize closures for extending functions
- [ ] Utilize closures for handling async data

## Getting Started

You should've cloned this repo back in module 0.

To switch to module 2, pull the branch named `module-2` from the origin
and switch to that branch in Xcode.

If you forgot how to do this, reference module 0 for instructions.

You should see the playground MoreSwiftBasics in the file navigator.

Within MoreSwiftBasics you should see the following playground files:

- Arrays
- SetsDictionaries
- Loops
- FunctionsClosures

## Collections

Like most languages, Swift contains implementations of common data structures
including Arrays (aka lists), Sets, and Dictionaries (aka maps)

### Array

In Swift, the Array data structure is used to store ordered sequences of data.

The name is a _bit_ misleading though, since it resembles what most languages
consider to be lists.

Notably, Swift Arrays have the following properties:

- Dynamic sizing; you don't need to specify array size upon initialization
- Insertion, modification, and removal functions
- Advanced indexing functions
- Built-in sorting functions

### Set

The Set data structure is fairly straightforward if you've used sets in other
languages such as Java or Python.

It's assumed that you have a general understanding of sets, but here's
[Apple's](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes/#Sets)
definition of a set:

```
A set stores distinct values of the same type in a collection with no defined
ordering. You can use a set instead of an array when the order of items isn’t
important, or when you need to ensure that an item only appears once.
```

### Dictionary

A dictionary is a mapping of keys to values. If you've used Maps in Java
(e.g. HashMap), the concepts of a dictionary should be familar to you.

### Practice using Arrays

In Xcode, navigate to Arrays playground page within MoreSwiftBasics.

Read through the code and the documentation. As you walk through the code, make
sure to run the playground whenever you see a `[RUN HERE]` comment.

Once you get to the practice section, do the following:

1. Press the play button above the console to run the entire playground.

2. Notice that you run into an "out of bounds error".
   Is something wrong with the logic? If so, fix it. Then, run again.
   
3. Now there's an error regarding unwrapping a nil optional value.
   Modify the code so that `unwrappedArr` is unwrapped safely.
   
4. Initialize `optionalArray` such that it is a non-nil empty array.

5. Append the single element `10` to optionalArray

6. Append the following elements all at once (in one line): `6`, `7`, `8`, `9`

7. Insert the element `55` at index 2

8. Print the 5th element. Before running, what do you expect the output to be.

#### What you've accomplished so far:

- [x] Create and manipulate Array objects

### Practice using Sets & Dictionaries

In Xcode, navigate to SetsDictionaries playground page within MoreSwiftBasics.

As you did with the Arrays playground, read through the code and run each
segment when you encounter a `[RUN HERE]` comment.

Once you get to the practice section, do the following:

1. Declare a (variable) String Set named `mySet` which contains only the
   element "Zebra". Make sure to validate your implementation.
   
2. Declare a String Set named `optionalSet`, but this time with an optional
   type. Don't initialize it just yet though.
   
3. Insert "Giraffe" into `optionalSet`. Remember, to call the function of an
   optional, you need to include a special character after the variable name.
   
4. Check if `optionalSet` contains "Giraffe". Remember that for optionals, you
   must unwrap the variable in some way before obtaining a value from it.

_Hint:_ `optionalSet` should NOT contain "Giraffe" at this point.
         Think about why that is.
   
5. Initialize `optionalSet` with elements "Cow" and "Elephant"

6. Insert "Giraffe" into `optionalSet` again. You can reuse your code from 
   step 3.

7. Check if `optionalSet` contains "Giraffe". You can reuse your code from
   step 4, though the output should be different this time since the set
   should actually contain "Giraffe" now.
   
8. Once again, insert "Giraffe" into `optionalSet`. You should notice that
   the size of the set remains unchanged.

By now, you should have gotten a feel for how Swift deals with sets. This is by
no means a comprehensive tutorial of sets, but that's beyond the scope of this
module.

#### What you've accomplished so far:

- [x] Create and manipulate Array objects
- [x] Create and manipulate Set objects
- [x] Create and manipulate Dictionary objects

## Loops

Loops are an important part of control flow in virtually every language.

We'll assume you're familiar with loops in other languages, so this practice
section will focus on the unique syntax of Swift loops.

## Practice with Loops

In Xcode, navigate to Loops playground page within MoreSwiftBasics.

Read through the code and the documentation. As you walk through the code, make
sure to run the playground whenever you see a `[RUN HERE]` comment.

Once you get to the practice section, do the following:

1. We have an empty array, `numArr`, that needs to be populated with multiples
   of ten. Right now, the values are hardcoded but it *might* be better suited
   for a loop.
   
   You can accomplish this using whichever type of loop you feel is best.
   
2. Now lets practice loops using a more real-world situation. We have a
   dictionary with messages in a conversation. Each message has a 5-character
   alphanumeric ID which acts as the key in the dictionary.
   
   Using a loop, print out the dictionary entries in the following format:
   ```
   a1b2c: Hello World!
   ```
   
3. When printing the dictionary contents, you may notice that the messages seem
   out of order. This is because dictionaries do not store items in a
   predictable order (such as the order they were inserted).
   
   Luckily, we have an array `messageOrder` which stores the message IDs in the
   order they were sent.
   
   Using a while loop, write code that prints out the values of `messages` in
   order using the `messageOrder` array.
   
4. Do the same, but now try doing it with a repeat-while loop.

5. Finally, do the same thing, but using a for loop that utilizes the built-in
   iterator for a collection.
   
   Remember, the syntax for doing so looks something like this:
   
   ```
   for someVal in someCollection
   ```

6. Finally, do the same thing, but using a for loop that utilizes a range.

   Remember, for loops with ranges follow this syntax:
   
   ```
   for someIntermediateInt in lowerBoundInt...upperBoundInt
   ```
   
   or, alternatively:
   
   ```
   for someIntermediateInt in lowerBoundInt..<upperBoundInt
   ```

#### What you've accomplished so far:

- [x] Create and manipulate Array objects
- [x] Create and manipulate Set objects
- [x] Create and manipulate Dictionary objects
- [x] Utilize while loops
- [x] Utilize for loops
- [x] Streamline code using loops

## Functions & Closures

In Swift, functions and closures are both ways of defining blocks of
executable code.

The idea behind functions should be familiar to you already. Syntactically,
functions in Swift closely resemble functions in TypeScript/JavaScript.

Closures, on the otherhand, may not be entirely familiar. Closures are a
form of functions which can be represented in the form of variables.

Two common uses of closures are to extend a generic function and to handle
asynchronous events.

To get an in-depth look at how closures work, check out the
[Swift documentation on closures](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/).

### Practice with Functions & Closures

In Xcode, navigate to FunctionsClosures playground page within MoreSwiftBasics.

Read through the code and the documentation. As you walk through the code, make
sure to run the playground whenever you see a `[RUN HERE]` comment.

Once you get to the practice section, do the following:

1. Use Swift's built-in `.sort(by:)` closure to sort the array by city name
   lengths (shortest to largest).
   
   If you're having trouble, take a look back in the example from the Arrays
   walkthrough.
   
   You can also look at the [Swift docs for .sort(by:)](https://developer.apple.com/documentation/swift/array/sort(by:))

2. Let's say the sort method didn't exist. To get some practice with loops
   and functions, let's try to implement a selection sort algorithm to sort
   the array.
   
   Use the following pseudocode as reference:
   
```
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
```

3. It's important to stress that some types of closures may obscure 

## That's all!

Hopefully by now you've been able to get hands-on experience with the basics
of Swift. 

You're likely already familiar with these concepts, so now that you've
tackled some of Swift's peculiarities surounding these concepts, you
should be able to write some powerful Swift code.

#### Here's what you've accomplished today:

- [x] Create and manipulate Array objects
- [x] Create and manipulate Set objects
- [x] Create and manipulate Dictionary objects
- [x] Utilize while loops
- [x] Utilize for loops
- [x] Streamline code using loops
- [x] Create basic functions
- [x] Utilize closures for extending functions
- [x] Utilize closures for handling async data
