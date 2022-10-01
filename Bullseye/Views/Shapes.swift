//
//  Shapes.swift
//  Bullseye
//
//  Created by Sena Oz on 1.10.2022.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
              .fill(Color.blue)
              .frame(width: 200, height: 100)
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
