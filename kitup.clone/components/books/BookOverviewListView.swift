//
//  BookOverviewListView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import SwiftUI

struct BookOverviewListView: View {
    
    let bookList: [BookOverview]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    Spacer().frame(width:8,height: 0)
                    ForEach(0..<bookList.count) { index in
                        NavigationLink {
                            BookDetailView()
                        } label: {
                            BookOverviewView(
                                image: Image(bookList[index].image),
                                isAudible: bookList[index].isAudible,
                                title: bookList[index].title,
                                description: bookList[index].description,
                                isFavorited: bookList[index].isFavorited,
                                isFree: bookList[index].isFree,
                                onFavoriteEvent: { _ in
                                    
                                }
                            )
                        }

                    }
                    Spacer().frame(width:8,height: 0)
                }
            }
        }
    }
}

struct BookOverviewListView_Previews: PreviewProvider {
    static var previews: some View {
        BookOverviewListView(
            bookList: [
                BookOverview(
                    id: "String", title: "String", description: "String", image: "String", isAudible: true, isFree: true, isFavorited: false 
                )
            ]
        )
    }
}
