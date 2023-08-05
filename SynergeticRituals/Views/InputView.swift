//
//  InputView.swift
//  SynergeticRituals
//
//  Created by Shantalia Z on 8/5/23.
//

import SwiftUI

struct InputView: View {
    @State private var isMenstruating: Bool = false
    @State private var cycleDay: Double = 1
    @State private var selectedSymptoms: Set<String> = []
    
    let symptoms = ["Cramps", "Fatigue", "Mood swings", "Bloating", "Headache"]

    var body: some View {
        VStack(spacing: 20) {
            Text("Enter your menstrual cycle data")
                .font(.headline)

            Toggle("Are you menstruating?", isOn: $isMenstruating)
            
            VStack(alignment: .leading) {
                Text("Day of cycle: \(Int(cycleDay))")
                Slider(value: $cycleDay, in: 1...28, step: 1)
            }
            
            List {
                ForEach(symptoms, id: \.self) { symptom in
                    HStack {
                        Text(symptom)
                        Spacer()
                        if selectedSymptoms.contains(symptom) {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())  // makes entire row tappable
                    .onTapGesture {
                        if selectedSymptoms.contains(symptom) {
                            selectedSymptoms.remove(symptom)
                        } else {
                            selectedSymptoms.insert(symptom)
                        }
                    }
                }
            }
            .listStyle(InsetListStyle())

            Button("Submit") {
                handleSubmit()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
    
    func handleSubmit() {
        if isMenstruating {
            // Set user's PhaseCycle to .menstrual
            // You'd also handle saving the day of the cycle and symptoms here.
        } else {
            // Set to some default or previously stored value
        }
        // Save/update this data to your user model or database.
    }
}



#Preview {
    InputView()
}
