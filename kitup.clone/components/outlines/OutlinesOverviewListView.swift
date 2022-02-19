//
//  OutlinesOverviewListView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import SwiftUI

struct OutlinesOverviewListView: View {
    let outlineOverviews : [OutlineOverview]
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    Spacer().frame(width:8,height: 0)
                    ForEach(0..<outlineOverviews.count) { index in
                       OutlineOverviewView(
                        image: Image(outlineOverviews[index].image),
                        title: outlineOverviews[index].title,
                        description: outlineOverviews[index].description
                       )
                    }
                    Spacer().frame(width:8,height: 0)
                }
            }
        }
    }
}

struct OutlinesOverviewListView_Previews: PreviewProvider {
    static var previews: some View {
        OutlinesOverviewListView(
            outlineOverviews: [
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
        )
    }
}

