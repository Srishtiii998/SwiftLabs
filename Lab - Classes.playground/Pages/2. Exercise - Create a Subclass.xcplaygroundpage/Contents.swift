/*:
## Exercise - Create a Subclass

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game. The base class `Spaceship` has been provided for you below.
 */
class Spaceship {
    var name: String = ""
    var health = 100
    var position = 0
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}
//:  Define a new class `Fighter` that inherits from `Spaceship`. Add a variable property `weapon` that defaults to an empty string and a variable property `remainingFirePower` that defaults to 5.
class Fighter: Spaceship {
    var weapon : String = " "
    var remainingFirePower: Int = 5
    func fire() {
            if remainingFirePower > 0 {
                remainingFirePower -= 1
                print("Firing \(weapon)! Remaining fire power: \(remainingFirePower)")
            } else {
                print("You have no more fire power.")
            }
        }
}

//:  Create a new instance of `Fighter` called `destroyer`. A `Fighter` will be able to shoot incoming objects to avoid colliding with them. After initialization, set `weapon` to "Laser" and `remainingFirePower` to 10. Note that since `Fighter` inherits from `Spaceship`, it also has properties for `name`, `health`, and `position`, and has methods for `moveLeft()`, `moveRight()`, and `wasHit()` even though you did not specifically add them to the declaration of `Fighter`. Knowing that, set `name` to "Destroyer," print `position`, then call `moveRight()` and print `position` again.
var destroyer = Fighter()
destroyer.weapon = "Laser"
destroyer.remainingFirePower = 10
destroyer.name = "Destroyer"
print(destroyer.position)
destroyer.moveRight()
print(destroyer.position)
//:  Try to print `weapon` on `falcon`. Why doesn't this work? Provide your answer in a comment or a print statement below, and remove any code you added that doesn't compile.

print("Cannot print falcon.weapon because 'Spaceship' does not have a property called 'weapon'. Only 'Fighter', which inherits from Spaceship and adds 'weapon', has that property.")

//:  Add a method to `fighter` called `fire()`. This should check to see if `remainingFirePower` is greater than 0, and if so, should decrement `remainingFirePower` by one. If `remainingFirePower` is not greater than 0, print "You have no more fire power." Call `fire()` on `destroyer` a few times and print `remainingFirePower` after each method call.
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Override Methods and Properties](@next)
 */
