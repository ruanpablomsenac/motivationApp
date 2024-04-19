//
//  FrasesView.swift
//  motivationApp
//
//  Created by Mac m2 on 19/04/24.
//

import SwiftUI

struct FrasesView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack{
            Spacer()

            if let randomIndex = viewModel.chars.indices.randomElement() {
                let randomChar = viewModel.chars[randomIndex]
                Text(randomChar.frase)
                Text(randomChar.autor)
                
            }
           Spacer()
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    FrasesView()
}
