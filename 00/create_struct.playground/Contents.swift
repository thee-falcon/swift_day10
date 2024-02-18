import UIKit

struct  Album {
    let title: String
    let artist: String
    let year: Int
    
    func    printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Omar Makran", year: 2024)
let wings = Album(title: "Wings", artist: "Said", year: 2023)

print(red.artist)
print(wings.year)

red.printSummary()
wings.printSummary()

struct  Employee {
    // initial a default value
    let name: String = "Omar"
    var vacationRemaining: Int
    
    // mutating is used to indicate that a method is allowed to modify the properties
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
        } else {
            print("Oops!, There aren't enough days remaining")
        }
    }
}

var archer = Employee(vacationRemaining: 10)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)
