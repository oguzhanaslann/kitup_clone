//
//  CategoriesOverviewListView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 10.02.2022.
//

import SwiftUI

struct CategoriesOverviewListView: View {
    let categoryOverviews : [CategoriesOverView]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    Spacer().frame(width:8,height: 0)
                    ForEach(0..<categoryOverviews.count) { index in
                        CategoryOverviewView(
                            title: categoryOverviews[index].title,
                            image: Image(
                                categoryOverviews[index].image
                            )
                        
                        )
                    }
                    Spacer().frame(width:8,height: 0)
                }
            }
        }
    }
}

struct CategoriesOverviewListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesOverviewListView(
            categoryOverviews: [
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
        )
    }
}
