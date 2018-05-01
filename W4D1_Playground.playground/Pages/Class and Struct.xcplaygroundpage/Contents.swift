//: [Previous](@previous)
/*:
 ## Class and Struct
 
 Classes are a way to group together common data together. You can think of them as a 'blueprint' for creating 'objects'. Structs are similar but they cannot be subclassed and any instance of them are passed by value NOT by reference.
 
 - Note:
 Classes and Structs will be defined in a single file and will be made available for other code to use. In Objective-C, you had to define your class and structs in a header file and an implementation file. In Swift, we've only got one file to worry about :).
 */
/*:
 Here we declare a class by using the `'class'` keyword and then the name of the class. Within the braces we are free to add properties and new methods for class.
 */
class ShapeClass {
    var numberOfSides = 0
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
/*:
 The struct version looks the same except we use the keyword `'struct'`.
 */
struct ShapeStruct {
    var numberOfSides = 0
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

/*:
 - Experiment:
 Update the ShapeClass and add a new property 'name'. Also, update the description method to include the name when it prints.
 */


/*:
 - Experiment:
 Try creating an instance of the ShapeClass. We can do this by writing the class name then putting parentheses '()' after the class name. Assign it to a declared variable and try setting the variables 'numberofSides' and 'name' and calling the 'description' method.
 */


/*:
 Our ShapeClass is looking good but it is missing something important. We need an initializer to set up the class when an instance is created. We are going to create another class very similar to ShapeClass but this time, we will add the initializer.
 */

class NamedShapeClass {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, numberOfSides: Int) {
        self.name = name
        self.numberOfSides = numberOfSides
    }
    
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

/*:
 - Experiment:
 Add another initializer to our 'NamedShapeClass'. Have this initializer take in 'name' and 'numberOfSides' as its parameters. Then test it out by creating an instance of 'NamedShapeClass'.
 */


/*:
 - Callout(Challenge):
 Let's make a new class named 'Square' and we will subclass 'NamedShapeClass'. This is already done for you below to showcase how to subclass.
 - add a new property for side length
 - create a new initializer that takes in side length and a name as parameters
 - create a new method called 'area' that calculates the area of the square ( side-length * side-length )
 - override the description method and print out a new description to indicate the side-length and number of sides for this square
 - test all your functions after you've finished
 */

class Square : NamedShapeClass {
    var sideLength = 0
    var area = 0

    init(name: String, sideLength: Int, numberOfSides: Int) {
        self.sideLength = sideLength
        super.init(name: name, numberOfSides: numberOfSides)
    }
    
     func calculateArea(){
        area = sideLength * sideLength
    }
    
    override func description() -> String {
        return "A shape with \(numberOfSides) sides, with length of \(sideLength) has area of \(area)"
    }
    
}

let square = Square.init(name: "square", sideLength: 10, numberOfSides: 4)
square.calculateArea()
square.description()

/*:
 - Callout(Challenge):
 Follow the instructions to create your own Car class.
 
 - Create a class for Car. Add a `String` property called model.
 - Create a function called drive. Inside the function include a print statement that prints the model of the car you are driving.
 - Create a custom initalizer that requires an `String model` as an input.
 - Subclass Car and make a Toyota Class. `Override init()` and set the model to "Prius" inside the method.

 To Test:
 - Add an instance of a Car called nissan. Initialize it with model named "Rogue"
 - Add the drive() method to make sure it prints out "Rogue"
 - Add an instance of Toyota called toyota. Initialize it.
 - Add the drive() method to make sure it prints out "Prius"
 */
class Car{
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    func drive(){
        print("You are driving \(model)")
    }
    
}

class Toyota: Car{
    override init(model: String) {
        super.init(model: model)
        self.model = "Prius"
    }
}

let nissan = Car.init(model: "Rouge")
nissan.drive()
let toyota = Toyota.init(model: "abc")
toyota.drive()




/*:
 - Callout(Challenge):
 Earlier, we mentioned that classes are passed by reference and structs are passed by value. Let's try to clarify this with an example.
 \
First, create a Person class with a name property and a custom initializer that takes a name as its parameter, then uncomment 'Section A'. What do think will happen? What are the results?
\
Now create the same Person class but convert it to a struct. Uncomment 'Section B'. What do think will happen? What are the results?
*/
// Implement Person class under here!
//class Person{
//    var name = ""
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//// Section A
//var firstPersonObject = Person(name: "Joe")
//var secondPersonObject = firstPersonObject
//secondPersonObject.name = "Jane"
//
//print(firstPersonObject.name)
//print(secondPersonObject.name)


// Implement Person struct under here!
struct Person{
    var name = ""
    
    init(name: String) {
        self.name = name
    }
}

// Section B
var firstPersonStruct = Person(name: "Joe")
var secondPersonStruct = firstPersonStruct
secondPersonStruct.name = "Jane"

print(firstPersonStruct.name)
print(secondPersonStruct.name)


//: [Next](@next)
