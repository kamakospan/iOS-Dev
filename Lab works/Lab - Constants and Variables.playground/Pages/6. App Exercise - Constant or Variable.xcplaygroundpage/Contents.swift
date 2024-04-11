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
let name = "Rihanna"
print("this variable is a const because we can legally only have one name and thats a constant")
var age = 18
print("our ages always vary, so it must be a variable that only gets bigger")
var steps = 10000
print("steps made each day cannot be a constant, because it all is different everyday")
let goalSteps = 12000
print("number of goal steps is something user sets on their own, and its a constant")
var avgHeartRate = 80
print("heart rate changes all the time depending on the state of one's body, so it cannot be a constant, must be a variable")

/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
