//
//  Cyclephase.swift
//  SynergeticRituals
//
//  Created by Shantalia Z on 8/4/23.
//// This file defines two types: CyclePhase and LunarPhase.


//CyclePhase is a struct with properties for each aspect of the menstrual cycle that you're interested in tracking (whether the user is menstruating, in the follicular phase, ovulating, and in the luteal phase), as well as the current lunar phase.

//LunarPhase is an enum with cases for each phase of the moon (new moon, first quarter or waxing, full moon, and last quarter or waning).




import Foundation

struct CyclePhase {
    var isMenstruating: Bool
    var isInFollicularPhase: Bool
    var isOvulating: Bool
    var isInLutealPhase: Bool
    var lunarPhase: LunarPhase
}

enum LunarPhase {
    case newMoon // White Moon
    case firstQuarter // Waxing Phase (Pink Moon)
    case fullMoon // Red Moon
    case lastQuarter // Waning Phase (Purple Moon)
}


