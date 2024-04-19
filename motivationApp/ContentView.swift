//
//  ContentView.swift
//  motivationApp
//
//  Created by Mac m2 on 18/04/24.
//

import SwiftUI

struct ContentView: View {
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
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
