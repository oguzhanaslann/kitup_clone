//
//  AllCategoriesView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 3.03.2022.
//

import SwiftUI

struct AllCategoriesView: View {
    var body: some View {
        VStack {
            List(1..<15) { i in
                
                NavigationLink {
                    CategoryBooksView()
                } label: {
                    HStack {
                        Image("sample")
                            .resizable()
                            .scaledToFill()
                            .frame(width:48,height: 48)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Some name of ")
                    }
                }
                

                
            }
            .listStyle(.plain)
            
        }.navigationTitle("Categories")
    }
}

struct AllCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        AllCategoriesView()
    }
}
