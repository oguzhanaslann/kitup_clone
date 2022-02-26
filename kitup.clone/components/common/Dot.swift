//
//  Dot.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 26.02.2022.
//

import SwiftUI

struct Dot: View {
    
    let fillColor : Color
    let diameterSize : CGFloat
    
    var body: some View {
        Rectangle()
            .fill(fillColor)
            .frame(width: diameterSize, height: diameterSize)
            .clipShape(Circle())
    }
}

struct Dot_Previews: PreviewProvider {
    static var previews: some View {
        Dot(
            fillColor: .blue.opacity(0.5),
            diameterSize: 16
        )
            .previewLayout(.sizeThatFits)
    }
}
