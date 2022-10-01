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
      .frame(width: 56.0, height: 56.0)
      .overlay(Circle().strokeBorder(Color("StrokeColor"), lineWidth: 2))
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
      Text(text)
          .kerning(-0.2)
          .font(.title3)
          .bold()
          .padding()
          .frame(width: 68, height: 56)
          .overlay(RoundedRectangle(cornerRadius: 21).strokeBorder(Color("StrokeColor"), lineWidth: 2))
  }
}


struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            FilledImageViewStroked(systemName: "list.dash")
            RoundedRectTextView(text: "54")
        }
    }
}
