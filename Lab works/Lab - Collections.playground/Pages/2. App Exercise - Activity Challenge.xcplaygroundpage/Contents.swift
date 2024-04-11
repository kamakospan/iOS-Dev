/*:
## App Exercise - Activity Challenge
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracking app shows users a list of possible challenges, grouped by activity type (i.e. walking challenges, running challenges, calisthenics challenges, weightlifting challenges, etc.) A challenge could be as simple as "Walk 3 miles a day" or as intense as "Run 5 times a week." 
 
 Using arrays of type `String`, create at least two lists, one for walking challenges, and one for running challenges. Each should have at least two challenges and should be initialized using an array literal. Feel free to create more lists for different activities.
 */
var walkChallenges: [String] = [
    "Walk 3 miles a day",
    "Walk for 30 minutes every morning",
    "Walk 10000 steps every day"
]

var runChallenges: [String] = [
    "Run 2 km per day",
    "Run with 500 grams weights",
    "Run on a treadmill with elevation 4"
]

for challenge in walkChallenges {
    print("🚶🏻‍♀️ \(challenge)")
}
for challenge in runChallenges {
    print("🏃🏻‍♀️ \(challenge)")
}
//:  All of the challenges will reset at the end of the month. Use the `removeAll` to remove everything from `challenges`. Print `challenges`.
runChallenges.removeAll()
print(runChallenges)
walkChallenges.removeAll()
print(walkChallenges)
//:  Create a new array of type `String` that will represent challenges a user has committed to instead of available challenges. It can be an empty array or have a few items in it.
var committedChallenges: [String] = [
    "Walk 10000 steps a day"
]
print(committedChallenges)
//:  Write an if statement that will use `isEmpty` to check if there is anything in the array. If there is not, print a statement asking the user to commit to a challenge. Add an else-if statement that will print "The challenge you have chosen is <INSERT CHOSEN CHALLENGE>" if the array count is exactly 1. Then add an else statement that will print "You have chosen multiple challenges."
if committedChallenges.isEmpty {
    print("Commit to some challenge")
}
else if committedChallenges.count == 1 {
    print("The challange you have chosen is \"\(committedChallenges[0])\"")
}
else {
    print("You have chosen multiple challenges")
}
/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Dictionaries](@next)
 */
