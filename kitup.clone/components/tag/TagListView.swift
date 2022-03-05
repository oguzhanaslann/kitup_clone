//
//  TagListView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 5.03.2022.
//

import SwiftUI

struct TagListView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    Spacer().frame(width:8,height: 0)
                    ForEach(0..<10) { index in
                        NavigationLink {
                            CategoryBooksView()
                        } label: {
                            HStack {
                                Group {
                                    Text("#")
                                    Text("Label")
                                }
                                .foregroundColor(.white)
                            }
                            .padding(.horizontal,8)
                            .padding(.vertical,8)
                            .background(.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 8 ))
                        }

                    }
                    Spacer().frame(width:8,height: 0)
                }
            }
        }
    }
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView()
    }
}
