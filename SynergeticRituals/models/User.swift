//
//  User.swift
//  SynergeticRituals
//
//  Created by Shantalia Z on 8/4/23.

//A name property to store the user's name
//A cyclePhase property to store the current state of the user's menstrual cycle and the lunar phase
//An initializer (init) that takes a name and a CyclePhase and sets up a new User
//A method (updateCyclePhase) that updates the cyclePhase property with new information

import Foundation


// Defines the User class
class User {
    // Properties of the User class
    var name: String // Name of the user
    var cyclePhase: CyclePhase // Current cycle phase of the user

    // Initializer for the User class. This gets called when you create a new instance of User.
    init(name: String, cyclePhase: CyclePhase) {
        self.name = name // Assigns the provided name to the name property of the User
        self.cyclePhase = cyclePhase // Assigns the provided CyclePhase to the cyclePhase property of the User
    }

    // Method to update the cyclePhase of the User. You call this method when you have new information about the user's menstrual cycle or lunar phase.
    func updateCyclePhase(isMenstruating: Bool,
                          isInFollicularPhase: Bool,
                          isOvulating: Bool,
                          isInLutealPhase: Bool,
                          lunarPhase: LunarPhase) {
        // Creates a new CyclePhase with the provided information and assigns it to the cyclePhase property
        self.cyclePhase = CyclePhase(isMenstruating: isMenstruating,
                                     isInFollicularPhase: isInFollicularPhase,
                                     isOvulating: isOvulating,
                                     isInLutealPhase: isInLutealPhase,
                                     lunarPhase: lunarPhase)
    }
}

