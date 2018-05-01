/*:
 Swift playgrounds allow you to run Swift code directly without having to code an entire app.
 
 - Experiment: Let's try this out now, write the following line of code directly below this comment
 
    `print("Hello, world!")`
 */
print("Hello, world!")
/*:
 ## Variables

 In Swift, we store data in variables and constants. Use `let` to make a `constant` and `var` to make a `variable`.
 */

let school = "Lighthouse Labs"
var students = 0
students = 7

/*:
 - Experiment:
 Try creating a variable and/or constant for your name, and age.
 What happens if you try to change the value of a constant?
 */
var name = "Ray"
let age = 100
name = "Sam"

//: ---
/*:
 ## Types
 
 Types are very important in Swift. When you create a variable, that variable has a *type*. This means that the variable can only hold one _type_ of data. If the variable is of _type_ `String`, that means you can't assign a number to it.
 
 - Experiment:
 Hold down the Option key and click on the variables `school` and `students` above to see a popup window with information about the variable. If we click on `school`, we can see it's a `String`. What type is `students`?
 */
// Students is of type int
/*:
 We can change the data stored in a variable using the *assignment operator* `'='`. The new value must _always_ be the same type as the variable, you can't assign a new value with a different type.
 
 - Experiment:
  Try changing the value of `weeksCompleted` to another integer.
  What happens if you try to change the value to a `String` like "4"?
  What happens if you try to change the value to a `Double` like 4.1?
 */

var weeksCompleted = 4
//weeksCompleted = "ray"
//weeksCompleted = 4.0
/*:
 As you can see, you don't have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler _infer_ its type. In the example above, the compiler infers that `students` is an integer because its initial value is an integer.
 
 If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
 */

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

/*:
 Here are some basic types which you've also seen in Objective-C:

 * String - a collection of characters inside "quotation marks"
 * Bool - either true or false
 * Int - a whole number. ex) 5
 * Double - a decimal number with more precision. ex) 5.55
*/
/*:
 - Experiment:
 Create a constant with an explicit type of `Float` and a value of `4`.
 */
/*:
 - Experiment:
 What type are the variables `tipAmount`, and `isOpen`?
 */
let num: Float = 4.0
var tipAmount = 6.01
// tipAmount's type is: Double


var isOpen = true
// isOpen's type is: Boolean

/*:
Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
*/

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

/*:
 - Experiment:
 Try removing the conversion to `String` from the last line. What error do you get?
 */
// binary operator cannot be applied to two different types
/*:
 - Callout(Challenge):
 Let's solve some simple geometric math problems. For each question, make sure you show your work just like how your teachers told you in high school. Show all the variables you are using and give them meaningful names. Hint: You can declare your own 'pi' using 3.14
 */

/*:
 - Callout(Formulas):
 Area of circle = pi * radius^2
 \
Circumference of circle = 2 * pi * radius
 \
Volume of cylinder = pi * radius^2 * height
 */
/*:
 Hint: 10^2 does not equal 10*10 in Swift
 */
/*:
 - Callout(Problem 1):
 Find the area of a circle with a radius of 10 metres
 */
/*:
 Hint: Make sure your radius is of type `Double`
 */
import Foundation
let pi = 3.14
var radius = 10.0
let areaOfCircle = pi * pow(radius, 2.0)
/*:
 - Callout(Problem 2):
 Find the circumference of a circle with a diameter of 24 metres.
 */
/*:
 Hint: Radius is half the length of the diameter
 */
let diameter = 24.0
let circumference = 2.0 * pi * diameter / 2
/*:
 - Callout(Problem 3):
 Find the volume of a cylinder with a radius of 5 metres and a height of 7 metres
 */
/*:
 Hint: You can double-check your answers yourself or on Google... Google has a really easy input mechanism for all three of these formulas if you just search them up.
 */
radius = 5.0
let height = 7.0
let cylinder = pi * pow(radius, 2.0) * height

//: [Next](@next)
