//
//  ContentView.swift
//  Bullseye
//  Created by Sena Oz on 30.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.00
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack(alignment: .center) {
                InstructionView(game: $game)

                SliderView(sliderValue: $sliderValue)
                
                HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)

            }
            .padding(30.0)
        }
        
    }}

struct InstructionView: View {
    
    @Binding var game: Game
    
    var body: some View {
        InsturactionText(text: "🎯🎯🎯\n Put the BullSEye as close as you can to").padding()
            
        BigNumberText(text: String(game.target))
    }
}

struct HitMeButtonView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            self.alertIsVisible = true
        }) {
            Text("Hit me")
                .fontWeight(.bold)
                .kerning(1)
                .font(.title3)
                .textCase(.uppercase)
                
        }
        .padding(20)
        .background(Color("ButtonColor"))
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .padding()
        .alert("Hello there!", isPresented: $alertIsVisible) {
          Button("Start New Round") { }
        } message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("The slider's value is \(roundedValue).\nYou scored \(self.game.points(sliderValue: roundedValue)) points this round.")
        
        }
    }
}

struct SliderView: View{
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text("0").bold().frame(width: 35)
            Slider(value: $sliderValue, in: 0...100)
                .padding(15.0)
            Text("100").bold().frame(width: 35)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
          .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
          .preferredColorScheme(.dark)
        ContentView()
          .previewLayout(.fixed(width: 568, height: 320))
          .preferredColorScheme(.dark)
           
    }
    }
