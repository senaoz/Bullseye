//
//  RoundViews.swift
//  Bullseye
//
//  Created by Sena Oz on 1.10.2022.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String

  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .frame(width: Constants.General.roundedViewLength, height:  Constants.General.roundedViewHeight)
      .foregroundColor(Color("TextColor"))
      .overlay(Circle().strokeBorder(Color("StrokeColor"), lineWidth: Constants.General.strokeWidth))
  }
}


struct FilledImageViewStroked: View {
  var systemName: String

  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .frame(width: 56.0, height: 56.0)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .background(Circle().fill(Color("FilledColor")))
  }
}


struct RoundedRectTextView: View {
    var text: String
  var body: some View {
      Title(text: text)
          .padding()
          .frame(width:  Constants.General.roundedViewWidth, height: Constants.General.roundedViewHeight)
          .overlay(RoundedRectangle(cornerRadius: 21).strokeBorder(Color("StrokeColor"), lineWidth: Constants.General.strokeWidth))
  }
}

struct CircleLeaderboardTextView: View {
    var text: String
  var body: some View {
      Title(text: text)
          .padding()
          .frame(width:  Constants.General.roundedViewLength, height: Constants.General.roundedViewHeight)
          .overlay(RoundedRectangle(cornerRadius: .infinity).strokeBorder(Color("SecondColor"), lineWidth: Constants.General.strokeWidth))
  }
}



struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            FilledImageViewStroked(systemName: "list.dash")
            RoundedRectTextView(text: "558")
            CircleLeaderboardTextView(text: "1")
        }
    }
}
