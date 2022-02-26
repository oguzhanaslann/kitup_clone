//
//  MyLibraryView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 24.02.2022.
//

import SwiftUI

struct MyLibraryView: View {
    
    
    
    var body: some View {
        let image = Image("")
        List {
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
            MyLibraryBookView(image: image)
        }
        .listStyle(.plain)
        
      
    }
}

struct MyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MyLibraryView(
            
        )
    }
}
