//
//  SearchView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 19.02.2022.
//

import SwiftUI

struct SearchView: View {
    @State var searchText : String = ""
    var body: some View {
        VStack() {
            HStack {
                TextField(
                    "Search...",
                    text: $searchText
                )
                    .padding(.horizontal)
                    .frame(
                        height: 40
                    )
                    .background(.gray.opacity(0.1))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 8)
                    )
                
                Button {
                    searchText = ""
                } label: {
                    Text("Cancel")
                        .foregroundColor(.red)
                }.padding()

            }.padding(.horizontal)
              
            VStack{
                List {
                    SearchResultView()
                    SearchResultView()
                    SearchResultView()
                    SearchResultView()
                    SearchResultView()
                }
                .listStyle(.plain)
                
            }
       
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
