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

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            FilledImageViewStroked(systemName: "list.dash")
        }
    }
}
