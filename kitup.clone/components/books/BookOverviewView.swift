//
//  BookOverviewView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 11.02.2022.
//

import SwiftUI

struct BookOverviewView: View {
    @State var isFavorited : Bool = false
    let onFavoriteEvent:(Bool) -> Void
    let image : Image
    let isAudible: Bool
    let title : String
    let description : String
    let isFree: Bool
  
    init(
        image: Image,
        isAudible: Bool,
        title : String,
        description : String,
        isFavorited : Bool,
        isFree: Bool,
        onFavoriteEvent:@escaping (Bool) -> Void
    ) {
        self.image = image
        self.isAudible = isAudible
        self.title = title
        self.description = description
        self.isFree = isFree
        self.onFavoriteEvent = onFavoriteEvent
    }
    
  
    
    var body: some View {
        ZStack(alignment: .topLeading) {
   
        
            Rectangle()
                .fill(.black.opacity(0.0))
                .blendMode(.multiply)
      
            
            VStack{
                ZStack(alignment:.top){
                
                    image
                        .resizable()
                        .clipped()
                        .background(.black.opacity(0.5))
                    
                    HStack() {
                        Text("Free")
                            .font(.caption)
                            .fontWeight(.light)
                            .padding(8)
                            .background(.green)
                            .foregroundColor(.white)
                            
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
                        
                    }.padding(.top,24)
           
         
                  
                    
                }.frame(width: 180, height: 200, alignment: .top)
            
                
                HStack {
                    Text(title)
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .foregroundColor(.black)
                    Spacer()
                    Button {
                        isFavorited.toggle()
                        onFavoriteEvent(isFavorited)
                    } label: {
                        Image(systemName:isFavorited ? "bookmark.fill" : "bookmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black.opacity(0.8))
                            .frame(width: 18, height: 18, alignment: .top)
                            .padding(4)
                    }

                 
                }.padding(.horizontal,8)
                
                HStack {
                    Text(description)
                        .font(.system(size: 12))
                        .fontWeight(.light)
                    .foregroundColor(.gray)
                    Spacer()
                }.padding(.horizontal,8)

        
            }
            

           
           
        }.frame(
            width: 180,
            height: 280,
            alignment: .center
        )
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct BookOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            BookOverviewView().previewDevice("iPhone 8")
//            BookOverviewView().previewDevice("iPhone 10")
            BookOverviewView(
                image: Image(""),
                isAudible: false,
                title: "title",
                description: "description",
                isFavorited: true,
                isFree: false,
                onFavoriteEvent: { _ in
                    
                }
            ).previewDevice("iPhone 13")
        }
    
    }
}
