//
//  Game.swift
//  Bullseye
//
//  Created by Sena Oz on 30.09.2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1

    func points(sliderValue: Int) -> Int {
        let difference = abs(self.target - sliderValue)
        var bonus: Int
        
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        
      return 100 - difference + bonus
    }
    
    mutating func restart(){
        target = Int.random(in: 1...100)
        score = 0
        round = 1
    }
    
    mutating func startNewRound(points: Int) { //mutating??
      score = score + points
      round = round + 1
        target = Int.random(in: 1...100)
    }
    
}
