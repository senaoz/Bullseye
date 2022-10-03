//
//  PointsView.swift
//  Bullseye
//
//  Created by Sena Oz on 2.10.2022.
//

import SwiftUI

struct PointsView: View {
    //var sliderValue: Double
    //var game: Game
    
    var body: some View {
        VStack(spacing: 15) {
            LabelText(text: "THE SLIDERS VALUE IS")
            BigNumberText(text: "99")
            AlertCaptionText(text: "You scored 200 Points\n🎉🎉🎉")
            Button() {
               
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
        PointsView()
        PointsView()
          .previewLayout(.fixed(width: 568, height: 320))
        PointsView()
          .preferredColorScheme(.dark)
        PointsView()
          .previewLayout(.fixed(width: 568, height: 320))
          .preferredColorScheme(.dark)

    }
}
