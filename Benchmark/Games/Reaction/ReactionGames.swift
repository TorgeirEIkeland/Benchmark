//
//  ReactionGames.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 24/12/2021.
//

import Foundation
import SwiftUI

struct ReactionGame: View {
    @ObservedObject var viewModel: ReactionViewModel = ReactionViewModel()
    @State var hasTimeElapsed = false
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        }
    
    var body: some View {
        ZStack {
            VStack{
                VStack {
                    switch viewModel.gameState {
                    case .Ready:
                        FirstView()
                            .onTapGesture {
                                viewModel.gameTapped()
                            }
                    case .TooSoon:
                        TooSoonView()
                            .onTapGesture {
                                viewModel.gameTapped()
                            }
                    case .Wait:
                        WaitView()
                            .onTapGesture {
                                viewModel.gameTapped()
                            }
                    case .ShowTime:
                        ShowResultView(result: viewModel.result)
                            .onTapGesture {
                                viewModel.gameTapped()
                            }
                    case .Green:
                        GreenView()
                            .onTapGesture {
                                viewModel.gameTapped()
                            }
                    }
                    
                }
                ScrollView{
                Text("Reuslts:")
                ForEach(viewModel.resultList, id: \.self) { result in
                    ResultItem(result: result)
                }
                Spacer()
                }
            }
        }
        .background(Color("CustomBackground"))
        .navigationTitle("Reaction game")
        .navigationBarTitleDisplayMode(.inline)
    }
}


