//
//  ContentView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 10.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                
                ToolbarView {
                    SearchView()
                        .navigationBarTitleDisplayMode(.inline)
                }
                
                TabView {
                    HomepageView(
                        content: {
                            Text("category from main")
                        }
                    )
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Homepage")
                        }.navigationBarHidden(true)
                        .navigationBarTitle(Text("Home"))
  

                    LibraryView()
                        .tabItem {
                            Image(systemName: "book")
                            Text("Library")
                        }.navigationBarHidden(true)
                        .navigationBarTitle(Text("Home"))


                    ProfileView()
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                        }.navigationBarHidden(true)
                        .navigationBarTitle(Text("Home"))

                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
