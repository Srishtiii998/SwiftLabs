/*:
## Exercise - Class Memberwise Initializers and References

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. The base class `Spaceship` and subclasses `Fighter` and `ShieldedShip` have been provided for you below. You will use these to complete the exercises.
 */
class Spaceship {
    var name: String
    var health: Int
    var position: Int

    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
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


class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}


class ShieldedShip: Fighter {
    var shieldStrength: Int

    init(name: String, health: Int, position: Int,
         weapon: String, remainingFirePower: Int,
         shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
    }

    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

/*:
 Note that each class above has an error by the class declaration that says "Class has no initializers." Unlike structs, classes do not come with memberwise initializers because the standard memberwise initializers don't always play nicely with inheritance. You can get rid of the error by providing default values for everything, but it is common, and better practice, to simply write your own initializer. Go to the declaration of `Spaceship` and add an initializer that takes in an argument for each property on `Spaceship` and sets the properties accordingly.

 Then create an instance of `Spaceship` below called `falcon`. Use the memberwise initializer you just created. The ship's name should be "Falcon."
 */
let falcon = Spaceship(name: "Falcon", health: 100, position: 0)
print("Name: \(falcon.name), Health: \(falcon.health), Position: \(falcon.position)")


/*:
 Writing initializers for subclasses can get tricky. Your initializer needs to not only set the properties declared on the subclass, but also set all of the uninitialized properties on classes that it inherits from. Go to the declaration of `Fighter` and write an initializer that takes an argument for each property on `Fighter` and for each property on `Spaceship`. Set the properties accordingly. (Hint: you can call through to a superclass's initializer with `super.init` *after* you initialize all of the properties on the subclass).

 Then create an instance of `Fighter` below called `destroyer`. Use the memberwise initializer you just created. The ship's name should be "Destroyer."
 */
let destroyer = Fighter(
    name: "Destroyer",
    health: 100,
    position: 0,
    weapon: "Laser",
    remainingFirePower: 5
)
print("Name: \(destroyer.name), Health: \(destroyer.health), Position: \(destroyer.position) , Waepon: \(destroyer.weapon) , remainingFirePower: \(destroyer.remainingFirePower)")

/*:
 Now go add an initializer to `ShieldedShip` that takes an argument for each property on `ShieldedShip`, `Fighter`, and `Spaceship`, and sets the properties accordingly. Remember that you can call through to the initializer on `Fighter` using `super.init`.

 Then create an instance of `ShieldedShip` below called `defender`. Use the memberwise initializer you just created. The ship's name should be "Defender."
 */
let defender = ShieldedShip(
    name: "Defender",
    health: 100,
    position: 0,
    weapon: "Cannon",
    remainingFirePower: 5,
    shieldStrength: 25
)





let sameShip = falcon

// Print initial positions
print("Initial positions:")
print("falcon.position = \(falcon.position)")
print("sameShip.position = \(sameShip.position)")

// Call moveLeft() on sameShip
sameShip.moveLeft()

// Print positions after moveLeft()
print("\nPositions after moving sameShip left:")
print("falcon.position = \(falcon.position)")
print("sameShip.position = \(sameShip.position)")

// Explanation:
print("""
\nExplanation:
Both falcon and sameShip positions changed because classes are reference types in Swift.
'sameShip' and 'falcon' refer to the exact same Spaceship instance in memory.
Thus, modifying the position through one reference affects the other.

If Spaceship were a struct (a value type), then assigning falcon to sameShip would create a copy.
Modifying sameShip's position would not affect falcon's position because they would be two separate instances.
""")


/*:
 _Copyright © 2023 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 4 of 4
 */
