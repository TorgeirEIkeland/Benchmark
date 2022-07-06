//
//  GameCard.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 23/12/2021.
//

import Foundation
import SwiftUI

struct GameCard: View {
    let icon: String
    let text: String
    var body: some View {
        VStack{
            Image(systemName: icon)
                .font(.system(size: 30))
                .foregroundColor(Color("IconColor"))
            Spacer().frame(height: 16)
            Text(text)
                .foregroundColor(Color.black)
        }
        .frame(width: 125, height: 100)
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        
    }
}
