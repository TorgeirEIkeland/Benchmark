//
//  ReadyView.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 24/12/2021.
//

import Foundation
import SwiftUI

struct FirstView: View {
    var body: some View{
        VStack{
            Spacer()
            Image(systemName: "bolt.fill")
                .font(.system(size: 100))
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Reaction Time Test")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            Text("When the red box turns green, tap as quickly as you can.")
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            Text("Click anywhere to start")
                .font(.system(size: 14))
                .foregroundColor(Color.white)

            Spacer()
        }
        .frame(
            minWidth: 0, maxWidth: .infinity,
            maxHeight: 415)
        .background(Color("ThemeColor"))
    }
}
