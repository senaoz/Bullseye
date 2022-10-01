//
//  TextViews.swift
//  Bullseye
//
//  Created by Sena Oz on 1.10.2022.
//

import SwiftUI

struct InsturactionText: View {
    var body: some View {
        Text("🎯🎯🎯\n Put the BullSEye as close as you can to".uppercased())
            .bold()
            .kerning(2)
            .multilineTextAlignment(.center)
            .font(.footnote)
            .lineSpacing(4.0)
            .lineLimit(nil)
            .padding()
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InsturactionText()
        InsturactionText()
          .previewLayout(.fixed(width: 568, height: 320))
    }
}
