//
//  LearderboardView.swift
//  Bullseye
//
//  Created by Sena Oz on 5.10.2022.
//

import SwiftUI

struct LearderboardView: View {
    var body: some View {
        ZStack {
          Color("BackgroundColor").edgesIgnoringSafeArea(.all)
          VStack(spacing: 10) {
            HeaderView()
            LabelView()
            RowView(index: 1, score: 10, date: Date())
          }
        }

    }
}

struct HeaderView: View {
  var body: some View {
      ZStack {
        BigBoldText(text: "Leaderboard")
        HStack {
          Spacer()
          Button(action: {}, label: {
              FilledImageViewStroked(systemName: "xmark")
              .padding(.trailing)
          })
        }
      }

      
  }
}

struct LabelView: View {
  var body: some View {
    HStack {
      Spacer()
        .frame(width: Constants.General.roundedViewLength)
      Spacer()
      LabelText(text: "Score")
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      Spacer()
      LabelText(text: "Date")
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}



struct RowView: View {
    
    let index: Int
    let score: Int
    let date: Date
   
    
    var body: some View {
        HStack{
            CircleLeaderboardTextView(text: String(index))
            Spacer()
            Title(text: String(score))
            Spacer()
            Text(date, style: .time).kerning(-0.2)
                .font(.title3)
                .bold()
            Spacer()
        }.background(
            RoundedRectangle(cornerRadius: .infinity)
            .strokeBorder(Color("SecondColor"), lineWidth: Constants.General.strokeWidth)
            ).padding()
    }
}

struct LearderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LearderboardView()
        LearderboardView()
          .previewLayout(.fixed(width: 568, height: 350))
        LearderboardView()
          .preferredColorScheme(.dark)
        LearderboardView()
          .previewLayout(.fixed(width: 568, height: 350))
          .preferredColorScheme(.dark)
    }
}
