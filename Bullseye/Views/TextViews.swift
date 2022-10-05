//
//  TextViews.swift
//  Bullseye
//
//  Created by Sena Oz on 1.10.2022.
//

import SwiftUI

struct InsturactionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
    }
}

struct AlertButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.white)
            .background(Color.accentColor)
            .cornerRadius(12)
    }
}

struct AlertCaptionText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .lineSpacing(12)
            .multilineTextAlignment(.center)
    }
}

struct Title: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .font(.title3)
            .bold()
    }
}



struct BigBoldText: View {
  let text: String

  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .font(.title)
      .fontWeight(.black)
  }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 15) {
            LabelText(text: "THE SLIDERS VALUE IS")
            BigNumberText(text: "99")
            AlertCaptionText(text: "You scored 200 Points\n🎉🎉🎉")
            AlertButtonText(text: "Start New Round")
        }.padding(50)
    }
}
