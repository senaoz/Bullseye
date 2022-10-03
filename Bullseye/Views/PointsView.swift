//
//  PointsView.swift
//  Bullseye
//
//  Created by Sena Oz on 2.10.2022.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        
        VStack(spacing: 15) {
            LabelText(text: "THE SLIDERS VALUE IS")
            BigNumberText(text: String(roundedValue))
            AlertCaptionText(text: "You scored \(points) Points\n🎉🎉🎉")
            Button() {
                alertIsVisible = false
                game.startNewRound(points: points)
            } label: {
                AlertButtonText(text: "Start New Round")
            }
        }
          .padding()
          .frame(maxWidth:300)
          .background(Color("BackgroundColor"))
          .cornerRadius(21)
          .shadow(radius: 10, x: 5, y: 5)

    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {

       Text("A")

    }
}
