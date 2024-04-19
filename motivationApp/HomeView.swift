//
//  HomeView.swift
//  motivationApp
//
//  Created by Turma01-24 on 19/04/24.
//

import SwiftUI

struct HomeView: View {
    @State private var startAnimation: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [
                    .blue,
                    .purple],
                startPoint: startAnimation ? .topLeading : .bottomLeading,
                endPoint: startAnimation ? .bottomTrailing : .topTrailing
            )
            .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                Text("Motivation")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                
                
            }
            .padding()
        }
        .onAppear {
            withAnimation(.linear(duration: 5.0).repeatForever()) {
                startAnimation.toggle()
            }
        }
    }
}

#Preview {
    HomeView()
}
