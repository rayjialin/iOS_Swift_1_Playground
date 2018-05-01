//: [Previous](@previous)
/*:
 ## Optionals and nil
 
 Swift introduces the *optional* type which is a 'wrapper' around other types. When you ask it for its value, it can either return `nil` or the value of the type that it's wrapping.
 
 We can declare a variable as optional by adding a '?' in front of the specified type.
 */

var schoolName: String? = "Lighthouse Labs"
var numberValue: Int? = 30
var doubleNumberValue: Double? = nil

/*:
 - Note:
 Using optionals is similar to using `nil` with pointers in Objective-C, but they work for any type, not just classes. Also, Swift's `nil` isn't the same as `nil` in Objective-C. In Objective-C, `nil` is a pointer to a nonexistent object. In Swift, `nil` isn't a pointer - it's the absence of a value of a certain type.
 */
/*:
 - Experiment:
 Declare a non-optional variable of a `String` and set it to `nil`. What happens?
 */
//var str: String = nil

/*:
 - Experiment:
 Declare an optional variable of a type `String` and set an initial `String` value to it. Then set it to `nil` on the next line. Does this work? Why or why not?
 */
var str1: String? = "abc"
str1 = nil
//print(str1)

/*:
 Let's consider multiplying two numbers together that are of different types. Since we have a `Double` and an `Int`, we need to convert the two numbers to the same type. For example, creating a new `Double` using an `Int`.
 */

var ratio: Double = 10.0 // ratio is a Double
var integerValue: Int = 20 // integerValue is an Int
// ratio * count // this doesn't work!

var convertIntegerValue = Double(integerValue) // convert integerValue to a Double
ratio * convertIntegerValue // now this works!


/*:
 Now let's say I have a `String` that contains digits and I want to use the numbered value of the `String` to multiply with another `Double`.
 */

/*:
 - Experiment:
 Declare a `String` containing digits and try converting it to a `Double` the same way shown in the above example. What do you notice about the variable type? Hint: Use 'Option' + Mouse Click on the variable to see the type
 */
let strb = "111"
let strdouble = Double(strb)
//print(strdouble)

/*:
 - Experiment:
 With your newly converted `Double` from a `String`, try multiplying it with the 'ratio' variable. What happens?
 */
//let strEx = strdouble * ratio

/*:
 Your newly converted `Double` value is a `Double?` which indicates we might have a double or we might have nothing.  Converting a `String` to a `Double` might fail because the `String` does not guarantee there will only be digits within it.
 
 Looks like the compiler didn't like our above experiment! It's giving us a cryptic error about applying binary operators and types and things, and offers the suggestion of adding an exclaimation point!
 
 We aren't able to do math with your newly converted `Double?` because Swift doesn't know how to multiply maybe-nothing-maybe-something and `ratio` together.
 
 To use our optional converted `Double?`, we need to unwrap it. There are a few ways to unwrap variables, and we'll need to know at least two of them.
 
 The first and most dangerous way is by adding an exclaimation point. This is called "force unwrapping". It will make the compiler ignore the optional and use the contents of your converted `Double?`.  So if your converted `Double?` does contain a number, the unwap will succeed.  However, the force-unwrap will crash the Playground if our `Double?` contained something that couldn't be converted to a number.
 */
/*:
 - Example:
 Force unwrapping is done by adding a '!' to the end of the variable name
 */
let myOptionalDouble: Double? = 12.0
print("\(myOptionalDouble!)")

/*:
 - Experiment:
 Now you try! Try printing out your converted `Double?` with a force unwrap
 */
let strEx = strdouble!
print(strEx)


/*:
 - Experiment:
 Go back and change your `String` to something that has no digits. What happens and why?
 */



/*:
 - Experiment:
 Declare an optional variable of a type `String` and set an initial `String` value to it. Try printing it.
 Now print it again, but this time unwrap the optional variable using the `'!'`. What's different about the two lines you printed?
 */


/*:
 - Experiment:
 Try setting an optional `String` variable to a non-optional `String` variable. What happens? What can you do to prevent the compiler from throwing an error?
 */


/*:
 The next way to deal with optionals is called `"Conditional unwrapping"` or sometimes casually called an `"if-let"`. It's **much** safer, and won't break your Playground, or any of your code.
 
 The code below uses a conditional unwrap on `gravityConstant`. This creates a new variable `unwrapped`, but only if `gravityConstant` is *not* nil. If you option click on the variable `unwrapped` you will notice that it is a `Double` not a `Double?`
 */

let gravityConstant: Double? = nil

if let unwrapped = gravityConstant {
    // unwrapped exists in this block, and is number unwrapped.
    print("\(unwrapped) is a Double and no longer a Double?")
} else {
    // unwrapped doesn't exist in this block.
    print("gravityConstant did not unwrap")
}


/*:
 - Experiment:
 Try changing `gravityConstant` to nil. What happens?
 */


/*:
 - Experiment:
 Create an array with containing elements of any type of your choice. Try experimenting with the array methods `'first'` and `'last'` to find out what they do. You'll see that both return optional values. Print out the values of first and last by using conditional unwrapping.
 */


/*:
 - Experiment:
 Using the same array, experiment with the array method `'indexOf'` and find out what it does. Print out the value using conditional unwrapping.
 */


/*:
 - Callout(Challenge):
 
 Put the cars and their price into a dictionary
 
 Mazda3 - $50000
 
 CRV - $60000
 
 Hummer - $100000
 
 Print out each car's price using conditional unwrapping and string interpolation.
 Try printing a car's price using a name that doesn't exist.
 */
//: [Next](@next)
let carDict = ["Mazda3": "$50000", "CRV": "$60000", "Hummer": "$1"]
//["Mazda3": "$50000", "CRV": "$60000", "Hummer": "$1"]

if let unwrap = carDict["Mazda3"]{
    print(unwrap)
}else {
    print("doenst exist")
}

if let unwrap = carDict["alb"]{
    print(unwrap)
}else {
    print("doenst exist")
}

