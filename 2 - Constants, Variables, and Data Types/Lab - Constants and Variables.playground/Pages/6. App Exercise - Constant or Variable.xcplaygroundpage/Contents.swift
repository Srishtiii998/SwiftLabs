/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
let name = "Oggy"
print("Name is constant for a user's name, so it is declared as a constant: \(name)")
var age = 35
print("Age is variable as it changes over time: \(age)")
var stepsTake: Int = 555
print("Steps taken is variable as it changes over time: \(stepsTake)")
let goalSteps: Int = 1000
print("Goal steps is fixed for one person\(goalSteps)")
var avgHeartRate: Int = 85
print("The heart rate varies from time to time hence its variable")




/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
