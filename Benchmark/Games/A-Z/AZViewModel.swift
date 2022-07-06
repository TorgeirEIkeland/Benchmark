//
//  AZViewModel.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 13/05/2022.
//

import Foundation

@MainActor
class AZViewModel: ObservableObject {
    
    @Published var resultList: [Double] = []
    var gameStarted: Bool = false
    @Published var currentHint: String = "A"
    var indexLetter: Int = 0
    var alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var timer = Timer()
    var timeElapsed: Double = 0.000
    var result: Double = 0.000
    @Published var letterGuess: String = ""{
        didSet{
            playGame(userInput: letterGuess)
        }
    }
    
    func resetGame(){
        result = 0
        timeElapsed = 0
        indexLetter = 0
        timer.invalidate()
        currentHint = "A"
        gameStarted = false
    }
    
    func playGame(userInput: String) {
        if indexLetter < 26 {
            for letter in alphabet {
                if letter == alphabet[indexLetter] && userInput.uppercased() == letter{
                    if !gameStarted {
                        startTimer()
                        gameStarted = true
                    }
                    indexLetter += 1
                    if indexLetter < 26 {
                        currentHint = alphabet[indexLetter]
                        return
                    } else {
                        print(timeElapsed)
                        stopTimer()
                        resultList.append(timeElapsed)
                        return
                        // Last letter has been reached, stop game
                    }
                }
            }
        }
    }
    
    func getLetter(userInput: String){
        print("Hello")

        if indexLetter < 26{
        for letter in alphabet {
            currentHint = alphabet[indexLetter]
            if userInput == alphabet[indexLetter] {
                indexLetter = indexLetter + 1
                if indexLetter == 1 {
                    startTimer()
                }
                return
            }
        }
        } else {
            //Victory State!!
            stopTimer()
            resultList.append(timeElapsed)
            return
        }
        }
    func startTimer() {
        timeElapsed = 0.000
        result = 0.000
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { timer in
            self.timeElapsed += 0.001
        }
    }
    func stopTimer() {
        timer.invalidate()
    }
    
}
