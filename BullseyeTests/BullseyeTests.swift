//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Sena Oz on 30.09.2022.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {

  var game: Game!

  override func setUpWithError() throws {
    game = Game()
  }

  override func tearDownWithError() throws {
    game = nil
  }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
      XCTAssertEqual(score, 95)
    }

    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
      XCTAssertEqual(score, 95)
    }
    
    func testScoreExact() {
        let guess = game.target
        let score = game.points(sliderValue: guess)
      XCTAssertEqual(score, 200)
    }
    
    func testScoreClose() {
        let guess = game.target + 2
        let score = game.points(sliderValue: guess)
      XCTAssertEqual(score, 98 + 50)
    }
    

    
    func testNewRound() {
      game.startNewRound(points: 100)
      XCTAssertEqual(game.score, 100)
      XCTAssertEqual(game.round, 2)
    }


}
