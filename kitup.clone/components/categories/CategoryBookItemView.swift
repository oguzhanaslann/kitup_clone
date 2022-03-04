//
//  CategoryBookItemView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 4.03.2022.
//

import SwiftUI

struct CategoryBookItemView: View {
    let image : Image
    @State var isFavorited : Bool = false
    
    var body: some View {
        VStack(
            alignment:.leading
        ) {
            HStack(
                alignment: .center
            ) {
                
                ZStack(alignment:.top) {
                    image
                        .resizable()
                        .clipped()
                        .background(.black.opacity(0.5))
                    
                    
                    HStack() {
                        Spacer()
                        ZStack {
                            Rectangle()
                                .fill(.white.opacity(0.7))
                                .frame(width: 24, height: 28, alignment: .top)
                              
                            
                            Image(systemName: "headphones")
                                .resizable()
                                .foregroundColor(.black.opacity(0.8))

                                .frame(width: 14, height: 14, alignment: .top)
                         

                        }.clipShape(RoundedRectangle(cornerRadius:4))
                            .padding(.horizontal,8)
                    
                    }.padding(.top,8)
                }
                .cornerRadius(8)
                .frame(
                    width: 124, height: 128
                )
                
                
                VStack(alignment:.leading){
                    Text("A List Item but long long longlonglong title ")
                        .fontWeight(.bold)
                        .padding(.bottom, 8 )
                        .lineLimit(2)
                    Text("A Third List Item")
                        .foregroundColor(.gray)
                }
                
                
                VStack(alignment: .leading) {
                    Button {
                        isFavorited.toggle()
                    } label: {
                        Image(systemName:isFavorited ? "bookmark.fill" : "bookmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black.opacity(0.8))
                            .frame(width: 24, height: 24, alignment: .top)
                            .padding(4)
                    }
                }
        
            }
        }
        .padding(.horizontal,8)
        .padding(.vertical,8)
    }
}

struct CategoryBookItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBookItemView(image: Image(""))
    }
}
