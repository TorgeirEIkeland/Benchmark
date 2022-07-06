//
//  AZStart.swift
//  Benchmark
//
//  Created by Torgeir Eikeland on 13/05/2022.
//

import SwiftUI

struct AZStart: View {
    @State var text: String = ""
    @EnvironmentObject var viewModel: AZViewModel


    var body: some View {
        VStack(){
            HStack(){
                Spacer()
                Button {
                    viewModel.resetGame()
                } label: {
                    Text("Reset")
                }
                .padding(.trailing)

            }
            Spacer()
            
                Text(viewModel.currentHint)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
            
            
            TextField("Click to start", text: $text)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .foregroundColor(Color.white)
                .frame(width: 100)
                .onChange(of: text) { newValue in
                    if text.count > 1 {
                        text = String(text.dropFirst())
                    }
                    viewModel.letterGuess = text
                }
                
            
            Spacer()
            if text == ""{
            Text("A-Z Speedtype test")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            Text("When you start typing the time starts.")
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            Text("Click the text field to start typing.")
                .font(.system(size: 14))
                .foregroundColor(Color.white)
            }
            Spacer()
        }
    }
}

struct AZStart_Previews: PreviewProvider {
    static var previews: some View {
        AZStart()
    }
}
