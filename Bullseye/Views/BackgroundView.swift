//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Sena Oz on 1.10.2022.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding(25)
        .background(Color("BackgroundColor"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack{
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            FilledImageViewStroked(systemName: "list.dash")
        }
    }
}


struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack{
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct NumberView: View{
    var title: String
    var text: String
    
    var body: some View {
        //Color.gray.frame(width: 56, height: 56)
        VStack{
            Text(title).font(.title3).bold()
            Text(text)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
            .previewInterfaceOrientation(.portrait)
    }
}
