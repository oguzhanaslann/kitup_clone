//
//  CarouselBookListView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import SwiftUI

struct CarouselBooksView: View {
    let bookgroup : BookGroup
    var body: some View {
        VStack {
            HStack {
                Text(bookgroup.title)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    
                } label: {
                    Text("See all")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(.red)
                }

            }.padding(.horizontal)
           
            BookOverviewListView(
                bookList: bookList
            )
        }
    }
}

struct CarouselBookListView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselBooksView(
            bookgroup: BookGroup(
                id: "",
                title: "title",
                bookList: bookList)
        )
    }
}
