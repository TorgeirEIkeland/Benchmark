//
//  TooSoonView.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 25/12/2021.
//

import Foundation
import SwiftUI

struct TooSoonView: View {
    var body: some View{
        VStack{
            Spacer()
            Image(systemName: "info.circle.fill")
                .font(.system(size: 100))
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Too Soon!")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            Text("Tap to try again")
                .foregroundColor(.white)
            Spacer()
        }
        .frame(
            minWidth: 0, maxWidth: .infinity,
            maxHeight: 415)
        .background(Color("ThemeColor"))
    }
}
