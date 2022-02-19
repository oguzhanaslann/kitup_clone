//
//  ToolbarView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 19.02.2022.
//

import SwiftUI

struct ToolbarView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
             ZStack {
                 HStack {
                     Image("kitupImage")
                         .resizable()
                         .scaledToFit()
                         .frame(width: CGFloat(72), height: CGFloat(48), alignment: .center)
                 }
                 
                 
                 HStack {
                     
                     Spacer()
                     
                     NavigationLink {
                         content
                     } label: {
                         Image(systemName: "magnifyingglass")
                             .resizable()
                             .frame(width: CGFloat(30), height: CGFloat(30), alignment: .trailing)
                             .foregroundColor(.black)
                     }.padding(.trailing, CGFloat(20))

                     

                 }
             }
         }
   
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView {
            Text(".......")
        }
    }
}
