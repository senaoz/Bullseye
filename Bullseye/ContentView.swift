//
//  ContentView.swift
//  Bullseye
//
//  Created by Sena Oz on 30.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.00
    
    var body: some View {
        let roundedValue: Int = Int(self.sliderValue)
        
        VStack(alignment: .center) {
            Text("🎯🎯🎯\nPut the BullSEye as close as you can to")
                .kerning(2)
                .font(.footnote)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .textCase(.uppercase)
            .padding()
            
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("0").bold()
                Slider(value: self.$sliderValue, in: 0...100)
                    .padding(15.0)
                Text("100").bold()
            }
            
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit me")
                    .kerning(1)
                    .font(.title3)
                    .textCase(.uppercase)
                    
            }
            .buttonStyle(.borderedProminent)
            .alert("THE SLIDERS VALUE IS", isPresented: $alertIsVisible) {
              Button("Start New Round") { }
            } message: {
                Text("\(roundedValue). You scored XXX Points\n🎉🎉🎉")
            
            }

        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(30.0)
    }
    }
