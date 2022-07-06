//
//  StartAZView.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 13/05/2022.
//

import SwiftUI

struct AZView: View {
    @StateObject var viewModel: AZViewModel = AZViewModel()
    var body: some View {
        ZStack{
        VStack{
            VStack{
                AZStart()
            }
            .frame(
                minWidth: 0, maxWidth: .infinity,
                maxHeight: 415)
            .background(Color("ThemeColor"))
            ScrollView{
            Text("Reuslts:")
            ForEach(viewModel.resultList, id: \.self) { result in
                ResultItem(result: result)
            }
            Spacer()
            }
        }
        .environmentObject(viewModel)

        }
        .background(Color("CustomBackground"))
        .navigationTitle("A-Z")
        .navigationBarTitleDisplayMode(.inline)

    }
}
