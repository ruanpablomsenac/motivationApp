//
//  MetaView.swift
//  motivationApp
//
//  Created by Turma01-24 on 19/04/24.
//

import SwiftUI

struct MetaView: View {
    @State private var startAnimation: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [
                    .blue,
                    .purple],
                startPoint: startAnimation ? .topLeading : .bottomLeading,
                endPoint: startAnimation ? .bottomTrailing : .topTrailing
            ).edgesIgnoringSafeArea(.top)
            
            VStack {
                
                
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
    MetaView()
}
