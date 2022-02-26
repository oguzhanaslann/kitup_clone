//
//  LanguageItemView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 26.02.2022.
//

import SwiftUI

struct LanguageItemView: View {
    
    let isSelected : Bool
    let image:Image
    let text: String
    let onTap : () -> Void
    
    init(
        isSelected : Bool,
        image:Image,
        text : String
    ) {
        self.isSelected = isSelected
        self.image = image
        self.text = text
        onTap = {}
    }
    
    init(
        isSelected : Bool,
        image:Image,
        text : String,
        onTap : @escaping () -> Void
    ) {
        self.isSelected = isSelected
        self.image = image
        self.text = text
        self.onTap = onTap
    }
    
    
    
    var body: some View {
        HStack {
            image
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Spacer().frame(width:12)
            Text(text)
                .fontWeight(.semibold)
            Spacer()
                .frame(height:50)
                .background()
            
            if(isSelected) {
                Dot(
                    fillColor: .red.opacity(0.5),
                    diameterSize: 16
                )
                    .padding()
            }
            
        
           
        }.onTapGesture {
            onTap()
        }
    }
}

struct LanguageItemView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageItemView(isSelected: true,image: Image("ic_flag_turkey"), text: "Türkçe")
    }
}
