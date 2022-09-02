//
//  ContentView.swift
//  Bullseye
//
//  Created by Sena Oz on 30.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Put the BullSEye as close as you can to")
                .kerning(2)
                .font(.footnote)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .textCase(.uppercase)
            .padding()
            
            Text("89")
                .font(.title)
                .fontWeight(.black)
            HStack {
                Text("0").font(.title2).fontWeight(.bold)
                Slider(value: .constant(50), in: 0...100).padding(50.0)
                Text("100").font(.title2).fontWeight(.bold)
            }
            
            Button(action: {}) {
                Text("Hit me")
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)

        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(30.0)
        
      
            
    }
    }
