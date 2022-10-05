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
                InstructionView(game: $game, alertIsVisible: $alertIsVisible)
                if alertIsVisible {
                    PointsView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game).transition(.scale)
                } else {
                    HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game).transition(.scale)
                }
            }
            if !alertIsVisible {
                SliderView(sliderValue: $sliderValue)
                    .transition(.scale)
                
            }
            
        }
        
    }}

struct InstructionView: View {
    
    @Binding var game: Game
    @Binding var alertIsVisible: Bool
    
    var body: some View {
        InsturactionText(text: "🎯🎯🎯\n Put the BullsEye as close as you can to").padding(.bottom)
            
        BigNumberText(text: String(game.target)).padding(.bottom, alertIsVisible ? 0 : 90)
    }
}

struct HitMeButtonView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.alertIsVisible = true
            }
        }) {
            Text("HIT ME")
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

        
        
    }
}

struct SliderView: View{
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text("0").bold().frame(width: 35)
            Slider(value: $sliderValue, in: 0...100)
            Text("100").bold().frame(width: 35)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
          .previewLayout(.fixed(width: 568, height: 350))
        ContentView()
          .preferredColorScheme(.dark)
        ContentView()
          .previewLayout(.fixed(width: 568, height: 350))
          .preferredColorScheme(.dark)
           
    }
    }
