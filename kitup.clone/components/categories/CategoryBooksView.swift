//
//  CategoryBooksView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 4.03.2022.
//

import SwiftUI

struct CategoryBooksView: View {
    var body: some View {
        ScrollView(Axis.Set.vertical) {
            
            GeometryReader { geometry in
                ZStack(alignment: .center) {
                    
                    if geometry.frame(in: .global).minY <= 0 {
                        Image("sample")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        
                        Rectangle()
                            .fill(.black.opacity(0.2))
                            .blendMode(.multiply)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(
                                y: -geometry.frame(in: .global).minY / 2
                            )
                    
                      
                        Text("Some Category")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .offset(
                                y: -geometry.frame(in: .global).minY / 2
                            )
                        
                    } else {
                        Image("sample")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height + geometry.frame(in: .global).minY
                            )
                            .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                        
                        Rectangle()
                            .fill(.black.opacity(0.2))
                            .blendMode(.multiply)
                            .frame(
                                height: (geometry.frame(in: .global).maxY) 
                            )
                            .offset(y: -geometry.frame(in: .global).minY)
                        
                        Text("Some Category")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .offset(
                                y: -geometry.frame(in: .global).minY / 2
                            )
                    }
                }
            } .frame(height: UIScreen.main.bounds.height * 0.33)
        
            
            
            VStack(alignment:.leading) {
                List(0..<20) { _ in
                    NavigationLink {
                        BookDetailView()
                    } label: {
                        CategoryBookItemView(image: Image(""))
                    }

                }
                .listStyle(.plain)
            }.frame(
                height: UIScreen.main.bounds.height * 0.67
            )
        }
    }
}

struct CategoryBooksView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBooksView()
    }
}
