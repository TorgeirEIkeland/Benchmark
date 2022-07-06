//
//  ReactionViewModel.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 24/12/2021.
//

import Foundation
import SwiftUI

class ReactionViewModel: ObservableObject {
    @Published var gameState: GameState = GameState.Ready
    var resultList: [Double] = []
    var test = "Ready"
    var result: Double = 0.000
    var timeElapsed: Double = 0.000 {
        didSet {
            if timeElapsed >= randomFlag {
                gameState = .Green
            }
        }
    }
    var timer = Timer()
    var randomFlag: Double = 2.000
    
    func gameTapped() {
        switch gameState{
        case .Ready:
            print("Ready")
            gameState = .Wait
            startTimer()
            test = "wait"
        case .TooSoon:
            gameState = .Wait
            startTimer()
            print("TooSoon")
        case .Wait:
            gameState = .TooSoon
            stopTimer()
            test = "Too Soon"
            print("Wait tapped")
        case .Green:
            stopTimer()
            result = timeElapsed - randomFlag
            resultList.append(result)
            gameState = .ShowTime
            print("Green!")
        case .ShowTime:
            gameState = .Wait
            startTimer()
            print("ShowTime")
        }
    }
    
    
    func startTimer() {
        timeElapsed = 0.000
        result = 0.000
        randomFlag = Double.random(in: 0.300...3.000)
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { timer in
            self.timeElapsed += 0.001
        }
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    
}

enum GameState {
    case Ready
    case TooSoon
    case Wait
    case Green
    case ShowTime
}
