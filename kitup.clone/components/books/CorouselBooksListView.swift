//
//  CorouselBooksListView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import SwiftUI

struct CorouselBooksListView: View {
    
    let bookgroups: [BookGroup]
    
    var body: some View {
        
        VStack {
            ScrollView(.vertical,showsIndicators: false) {
                VStack {
                    Spacer().frame(width:16,height: 0)
                    ForEach(0..<bookgroups.count) { index in
                        CarouselBooksView(
                            bookgroup: bookgroups[index]
                        )
                    }
                }
            }
        }
    }
}

struct CorouselBooksListView_Previews: PreviewProvider {
    static var previews: some View {
        CorouselBooksListView(
            bookgroups: bookGroup
        )
    }
}
