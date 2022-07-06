//
//  WaitView.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 24/12/2021.
//

import Foundation
import SwiftUI

struct WaitView: View {
    var body: some View{
        VStack{
            Spacer()
            Text("...")
                .font(.system(size: 100))
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Wait For Green")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            Spacer()
        }
        .frame(
            minWidth: 0, maxWidth: .infinity,
            maxHeight: 415)
        .background(Color.red)
    }
    
}
