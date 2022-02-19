//
//  LibraryView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 13.02.2022.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(spacing:0 ){
                
                VStack {
                    Tabs(fixed: true,
                         tabs: [
                            .init(icon: Image(systemName: "star.fill"), title: "My List"),
                            .init(icon: Image(systemName: "star.fill"), title: "Finished"),
                        ],
                         geoWidth: geo.size.width,
                         selectedTab: $selectedTab
                    )
                    TabView(
                        selection: $selectedTab
                    ) {
                        Text("Hello")
                            .tag(0)
                        Text("World")
                            .tag(1)
                    }.tabViewStyle(
                        PageTabViewStyle(indexDisplayMode: .always)
                    ).animation(.easeIn,value: "")
                    
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

}

