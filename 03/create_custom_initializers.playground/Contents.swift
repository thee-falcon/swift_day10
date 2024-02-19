import UIKit

/*
 Initializers are specialized methods that are designed to prepare a new struct instance to be used.
 */

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...100)
    }
}

let player = Player(name: "Omar Makran")
print(player.number)

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")
print(roslin.name)

// as does creating an anonymous employee
let anon = Employee()
print(anon.name)
