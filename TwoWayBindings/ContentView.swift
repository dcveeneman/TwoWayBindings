//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by David Veeneman on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount = 0
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    
    var body: some View {
        VStack {
            Spacer()
            
            // Button Control
            Text("Press Count: \(pressCount)")
                .font(.title)
            Button("Press Me"){
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            // Text Field Control
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Text entered: \(name)")
           
            Spacer()
            
            // Toggle Control
            Toggle("Toggle is \(toggleIsOn ? "on" : "off")", isOn: $toggleIsOn)
            
            Spacer()
            
            // Color Picker
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            ColorPicker("Pick a rectangle color", selection: $selectedColor)
            
            Spacer()
            
           // Date Picker
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper("Stepper value: \(stepperValue)", value: $stepperValue, in: 1...10)
            Spacer()
            
        }
        .font(.title2)
        .padding()
    }
}


#Preview {
    ContentView()
}
