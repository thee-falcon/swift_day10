import UIKit

/*
 willSet:
 - willSet is called just before the value of the property is set.
 - It provides you with a default parameter name (newValue by default) that represents the new value about to be assigned.
 - You can use willSet to take some action or validation before the value changes.
 */

/*
 didSet:
 - didSet is called immediately after the value of the property is set.
 - It provides you with a default parameter name (oldValue by default) that represents the previous value of the property.
 - You can use didSet to react to changes in the property, perform additional actions, or update other properties.
 */

struct  Game {
    var score = 0 {
        didSet {
            print("Score now \(score)")
        }
    }
}

var game  = Game()
game.score += 1
game.score *= 2
game.score += 10
game.score -= 11

print("\n")
struct  App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New Value is \(newValue)")
        }
        didSet {
            print("The are now \(contacts.count)")
            print("The Old value is \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Omar Makran")
app.contacts.append("Rida")
app.contacts.append("Amine")
app.contacts.append("Said")
