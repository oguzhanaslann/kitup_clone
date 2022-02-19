//
//  SearchResultView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 19.02.2022.
//

import SwiftUI

struct SearchResultView: View {
    var body: some View {
        HStack {
            Image("").resizable()
                .clipped()
                .background(.black.opacity(0.5))
                .frame(width:96,height:96)
                .clipShape(RoundedRectangle(cornerRadius: 8))
          
            Spacer()
                .frame(width:12)
            
            VStack(alignment:.leading){
                Text("A List Item but long long long title ")
                    .fontWeight(.bold)                    .padding(.bottom, 8 )
                Text("A Second List Item")
                    .padding(.bottom, 8 )
                Text("A Third List Item")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
        }.padding()
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}
