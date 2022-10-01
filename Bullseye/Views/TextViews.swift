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


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LabelText(text: "String")
            BigNumberText(text: "999")
        }
    }
}
