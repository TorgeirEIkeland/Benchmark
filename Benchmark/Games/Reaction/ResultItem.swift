//
//  ResultItem.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 25/12/2021.
//

import Foundation
import SwiftUI

struct ResultItem: View {
    let result: Double
    var body: some View{
        Text("\(result, specifier: "%.3f")sec")
            .padding(16)
            .frame(width: 200)
            .background(Color.white)
            .cornerRadius(8)
        
    }
}
