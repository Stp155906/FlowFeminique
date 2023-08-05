//
//  RitualView.swift
//  SynergeticRituals
//
//  Created by Shantalia Z on 8/5/23.
//

import SwiftUI


struct RitualView: View {
    // Define the Zodiac signs as selectable options.
    let zodiacOptions: [ZodiacSign] = [.aries, .taurus, .gemini, .cancer, .leo, .virgo, .libra, .scorpio, .sagittarius, .capricorn, .aquarius, .pisces]
    
    // This will hold the currently selected zodiac sign.
    @State private var selectedZodiacSign: ZodiacSign = .aries
    
    // Derived ritual based on the zodiac sign
    private var ritual: Ritual {
        Ritual(forSign: selectedZodiacSign)
    }

    var body: some View {
        VStack(spacing: 20) {
            // Display a picker for the user to select their Zodiac sign.
            Picker("Select your Zodiac Sign", selection: $selectedZodiacSign) {
                ForEach(zodiacOptions, id: \.self) { sign in
                    Text(sign.displayName).tag(sign)

                }
            }
            .pickerStyle(MenuPickerStyle())

            // Display the ritual recommendation based on the selected zodiac sign.
            Text(ritual.type.rawValue)  // Display the ritual type
                .font(.title)
            
            Text(ritual.description)  // Display the ritual description
                .font(.subheadline)
                .padding()
            
            // You can add more UI elements here, like images or buttons, related to the ritual.
            
        }
        .padding()
    }
}

struct RitualView_Previews: PreviewProvider {
    static var previews: some View {
        RitualView()
    }
}


#Preview {
    RitualView()
}
