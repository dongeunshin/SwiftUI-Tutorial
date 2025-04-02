//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by dong eun shin on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        TabView {
//            Tab("Friends", systemImage: "person.and.person") {
//                FriendList()
//            }
//
//            Tab("Movies", systemImage: "film.stack") {
//                MovieList()
//            }
//        }
        
        TabView {
            FriendList()
                .tabItem {
                    Label("Friends", systemImage: "person.and.person")
                }

            MovieList()
                .tabItem {
                    Label("Movies", systemImage: "film.stack")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
