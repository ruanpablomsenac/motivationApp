//
//  ContentView.swift
//  motivationApp
//
//  Created by Mac m2 on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            TabView{
                Group{
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    FrasesView()
                        .tabItem {
                            Label("Frases", systemImage: "list.bullet.rectangle")
                        }
                    VideoView()
                        .tabItem {
                            Label("Videos", systemImage: "movieclapper.fill")
                        }
                    PodcastView()
                        .tabItem {
                            Label("Podcasts", systemImage: "music.mic")
                        }
                    Group{
                        RecomendacoesView()
                            .tabItem {
                                Label("Recomendações", systemImage: "hand.thumbsup.fill")
                            }
                        MetaView()
                            .tabItem {
                                Label("Metas", systemImage: "checkmark.seal.fill")
                            }
                    }
                    .toolbarBackground(.blue, for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                    .toolbarColorScheme(.light, for: .tabBar)
                }
                .toolbarBackground(.blue, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarColorScheme(.light, for: .tabBar)
            }
            .onAppear(){
                //            UITabBar.appearance().backgroundColor = .lightGray
                //            UITabBar.appearance().unselectedItemTintColor = .gray
                
            }
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
