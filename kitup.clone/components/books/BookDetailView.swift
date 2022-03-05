//
//  BookDetailView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 5.03.2022.
//

import SwiftUI

struct BookDetailView: View {
    
    let image : Image
    
    init(){
        self.image = Image("")
    }
    
    init(image : Image){
        self.image = image
    }
    
    @State var isFavorited : Bool = false
    
    var body: some View {
        ScrollView {
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
                    
                    Spacer()
                        .frame(width: 16)
                    
                    VStack(alignment:.leading){
                        Text("A List Item but long long longlonglong title ")
                            .fontWeight(.bold)
                            .padding(.bottom, 16 )
                        Text("A Third List Item")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                
                HStack {
                    Text("95% Match")
                        .foregroundColor(.green)
                    Text("|")
                    
                    Text("8/10 Rating")
                    
                }.padding()
                
                
                HStack {
                    Button {
                        isFavorited.toggle()
                    } label: {
                        Image(systemName:isFavorited ? "bookmark.fill" : "bookmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.red.opacity(0.8))
                            .frame(width: 36, height: 36, alignment: .top)
                            .padding(4)
                    }
                    
                    Text( isFavorited ? "Added"  : "Add")
                }
                .padding()
                
                
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "book.fill")
                                .foregroundColor(.white)
                            Text("READ")
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width:172,height: 48)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "headphones")
                                .foregroundColor(.white)
                            Text("LISTEN")
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width:172,height: 48)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                  
                    Spacer()
                }
                
                HStack {
                    Image(systemName: "eye")
                    Group {
                        Text("81")
                        Text("people are reading this book now")
                    }
                    .font(.system(size: 14))
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Synopsis")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                    
                    Spacer()
                        .frame(height: 8)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .font(.system(size: 20))
                    
                }  .padding(.horizontal)

                
                VStack(alignment:.leading) {
                    Text("Suggested")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .padding()
                    
                    BookOverviewListView(
                        bookList: bookList
                    )
                }
                
                
                VStack(alignment: .leading) {
                    Text("Label")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .padding()
                    
                    TagListView()
                }
                
                Spacer()
            }
            .padding(.horizontal,16)
            .padding(.vertical,8)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(
            image: Image("")
        )
    }
}
