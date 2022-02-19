//
//  CategoryOverviewView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 10.02.2022.
//

import SwiftUI

struct CategoryOverviewView: View {
    
    let title: String
    let image : Image
    
    var body: some View {
        ZStack(alignment: .topLeading) {
   
            image.resizable()
                .frame(
                    width: 180,
                    height: 180,
                    alignment: .center
                )
                .scaledToFit()
                .background(Color.black.opacity(0.5))
                .foregroundColor(Color.black.opacity(0.8))
            
            Rectangle()
                .fill(.black.opacity(0.4))
                .blendMode(.multiply)
            
            ZStack{
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                }
            }.padding(.top,24)
                .padding(.leading,24)

           
           
        }.frame(width: 150, height: 150, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
    }
}

struct CategoryOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryOverviewView(
            title: "Sample",
            image: Image("")
        )
    }
}
