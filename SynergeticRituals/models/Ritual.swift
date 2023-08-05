//  Ritual.swift
//  SynergeticRituals
//
//  Created by Shantalia Z on 8/5/23.
//

import Foundation

// Represents the elemental association of zodiac signs
enum Element {
    case fire
    case earth
    case air
    case water
}

// Represents the types of rituals one can perform based on elemental association
enum RitualType: String {
    case candleWork = "Candle Work"
    case divinationWork = "Divination Work"
    case incenseSagingWork = "Incense/Saging Work"
    case herbalTonicWork = "Herbal/Tonic Work"
}

// Represents the zodiac signs
enum ZodiacSign {
    case aries, taurus, gemini, cancer, leo, virgo, libra, scorpio, sagittarius, capricorn, aquarius, pisces
    
    // Each sign's elemental association
    var element: Element {
        switch self {
        case .aries, .leo, .sagittarius:
            return .fire
        case .taurus, .virgo, .capricorn:
            return .earth
        case .gemini, .libra, .aquarius:
            return .air
        case .cancer, .scorpio, .pisces:
            return .water
        }
    }

    // DisplayName property for each Zodiac Sign
    var displayName: String {
        switch self {
        case .aries: return "Aries"
        case .taurus: return "Taurus"
        case .gemini: return "Gemini"
        case .cancer: return "Cancer"
        case .leo: return "Leo"
        case .virgo: return "Virgo"
        case .libra: return "Libra"
        case .scorpio: return "Scorpio"
        case .sagittarius: return "Sagittarius"
        case .capricorn: return "Capricorn"
        case .aquarius: return "Aquarius"
        case .pisces: return "Pisces"
        }
    }
}

// Represents the ritual itself
struct Ritual {
    var sign: ZodiacSign
    var type: RitualType
    var description: String {
        switch type {
        case .candleWork:
            return "Perform a candle ritual to harness the energy of \(sign)."
        case .divinationWork:
            return "Use divination techniques to channel the introspective power of \(sign)."
        case .incenseSagingWork:
            return "Burn incense or sage to cleanse and refresh with the guidance of \(sign)."
        case .herbalTonicWork:
            return "Create a herbal tonic to benefit from the grounding energy of \(sign)."
        }
    }
    
    // An initializer that creates a ritual based on the given sign's element
    init(forSign sign: ZodiacSign) {
        self.sign = sign
        switch sign.element {
        case .fire:
            self.type = .candleWork
        case .water:
            self.type = .divinationWork
        case .air:
            self.type = .incenseSagingWork
        case .earth:
            self.type = .herbalTonicWork
        }
    }
}
