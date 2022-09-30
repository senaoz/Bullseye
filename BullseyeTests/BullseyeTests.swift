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

  func testExample() throws {
    XCTAssertEqual(game.points(sliderValue: 50), 999)
  }
}
