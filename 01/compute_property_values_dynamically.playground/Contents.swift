import UIKit

struct  Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    // computed property
    var vacationRemmainig: Int {
        // The get block calculates the value
        get {
            vacationAllocated - vacationTaken
        }
        // The set block allows you to set the value based on the new value
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Omar", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemmainig = 5

print(archer.vacationAllocated)
