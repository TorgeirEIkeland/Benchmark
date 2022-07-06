//
//  InitialView.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 24/12/2021.
//

import Foundation
import SwiftUI

struct InitialView: View {
    var body: some View{
        VStack{
            Spacer()
            Image(systemName: "bolt.fill")
                .font(.system(size: 100))
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Reaction test")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            Spacer()
        }
        .frame(
            minWidth: 0, maxWidth: .infinity,
            maxHeight: 415)
        .background(Color("ThemeColor"))
        
    }
}
