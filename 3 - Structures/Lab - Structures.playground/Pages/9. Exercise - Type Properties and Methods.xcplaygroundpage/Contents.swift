/*:
## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
        
    var userName: String
    var email: String
    var age: Int
    //used the static keyword for adding a property to the type/struct
    //type property for this
    static var currentUser: User = User(userName: "", email: "", age: 19)
    static func logIn(user: User) {
        currentUser = user
        print("\(user.userName) has logged in.")
    }
}
let japitInstance = User(userName: "Japit Singh", email: "xyz@gmail.com", age: 19)
User.currentUser = japitInstance
print("Current User logged in : \(User.currentUser)")

/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */
//just created a type method for this in the struct given above
User.logIn(user: japitInstance)

/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
