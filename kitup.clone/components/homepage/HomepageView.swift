//
//  HomepageView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import SwiftUI


let  categoryOverviews = [
    CategoriesOverView(
        id: "1",
        title: "Sample",
        image: ""
    ),
    CategoriesOverView(
        id: "2",
        title: "Sample",
        image: ""
    ),
    CategoriesOverView(
        id: "3",
        title: "Sample",
        image: ""
    ),
]

let outlines = [
    OutlineOverview(
        id: "id",
        title: "title",
        description: "description",
        image: ""
    ),
    OutlineOverview(
        id: "id",
        title: "title",
        description: "description",
        image: ""
    ),
    OutlineOverview(
        id: "id",
        title: "title",
        description: "description",
        image: ""
    ),
    OutlineOverview(
        id: "id",
        title: "title",
        description: "description",
        image: ""
    ),
    OutlineOverview(
        id: "id",
        title: "title",
        description: "description",
        image: ""
    )
]


let bookList =  [
    BookOverview(
        id: "String", title: "String", description: "String", image: "String", isAudible: true, isFree: true, isFavorited: false
    )
]

let bookGroup = [
    BookGroup(
        id: "",
        title: "title",
        bookList: bookList
    ),
    BookGroup(
        id: "",
        title: "title",
        bookList: bookList
    ),
    BookGroup(
        id: "",
        title: "title",
        bookList: bookList
    )
]
struct HomepageView<Content: View>: View {
    
    
    let categoryListView: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.categoryListView = content()
    }
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Spacer().frame(height:16)
               
                BookOverviewListView(
                    bookList: bookList
                )
               
                Spacer().frame(height:32)
                
                HStack {
                    Text("Categories")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Spacer()
             
                    
                    NavigationLink {
                        categoryListView
                    } label: {
                        Text("See all")
                            .font(.system(size: 14))
                            .fontWeight(.light)
                            .foregroundColor(.red)
                    }

                }.padding(.horizontal)
               
                CategoriesOverviewListView(
                    categoryOverviews: categoryOverviews
                )
                
                Spacer().frame(height:32)
                
                HStack {
                    Text("Outlines")
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
               
                OutlinesOverviewListView(
                    outlineOverviews: outlines
                )
                
                Spacer().frame(height:32)
                
                CorouselBooksListView(
                    bookgroups: bookGroup
                )

             
            }
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView(content: {
            Text("category detail")
        })
    }
}
