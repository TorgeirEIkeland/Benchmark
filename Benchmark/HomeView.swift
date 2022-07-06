//
//  HomeView.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 23/12/2021.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Spacer()
                    Image(systemName: "bolt.fill")
                        .font(.system(size: 100))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    
                    
                    Text("Human Benchmark")
                        .font(.system(size: 40))
                        .foregroundColor(Color.white)
                    Spacer().frame(height:8)
                    Text("Measure your abilities with brain games and cognitive tests")
                        .font(.system(size: 23))
                        .padding(16)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: ReactionGame()){
                        Text("Get Started")
                            .font(Font.headline.weight(.bold))
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(8)
                    }
                    
                    
                    Spacer()
                }
                .frame(
                    minWidth: 0, maxWidth: .infinity,
                    maxHeight: 500)
                .background(Color("ThemeColor"))
                Spacer().frame(height: 16)
                HStack{
                    Spacer()
                    NavigationLink(destination: ReactionGame()){
                        GameCard(icon: "bolt.fill", text: "Reaction Time")
                    }

                    Spacer()
                    Button {
                        //
                    } label: {
                        GameCard(icon: "square.grid.2x2", text: "Sequence memmory")
                        
                    }
                    
                    Spacer()
                }
                Spacer().frame(height: 16)
                HStack{
                    Spacer()
                    NavigationLink(destination: AZView()){
                        GameCard(icon: "bolt.fill", text: "A-Z")
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        GameCard(icon: "bolt.fill", text: "fill later")
                        
                    }
                    
                    Spacer()
                }
                Spacer()
            }
            .background(Color("CustomBackground"))
            .navigationBarHidden(true)

        }.accentColor(Color.white)
            .edgesIgnoringSafeArea(.all)
    }
}
