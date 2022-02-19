//
//  OutlineOverviewView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import SwiftUI

struct OutlineOverviewView: View {
    
    let image : Image
    let title : String
    let description : String
    
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
                }.frame(width: 250, height: 200, alignment: .top)

                HStack {
                    Text(title)
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
               }.padding(.horizontal,8)
                
                Spacer().frame(height:8)
               
                HStack {
                    Text(description)
                        .font(.system(size: 12))
                        .fontWeight(.light)
                    .foregroundColor(.gray)
                    Spacer()
                }.padding(.horizontal,8)
                

        
            }
            

           
           
        }.frame(
            width: 250,
            height: 300,
            alignment: .center
        )
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct OutlineOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineOverviewView(
            image:  Image(""),
            title:  "Tittle",
            description: "description"
        )
    }
}
