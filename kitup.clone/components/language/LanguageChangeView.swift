//
//  LanguageChange.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 25.02.2022.
//

import SwiftUI


struct LanguageChangeView: View {
    static let turkishIndex = 0
    static let englishIndex = 1
    static let russianIndex = 2
    @State var selectedLanguageIndex = englishIndex
    let onSaveTapped: (Int) -> Void
    let onCancelTapped: () -> Void
    
    init(){
        self.onSaveTapped = { _ in }
        self.onCancelTapped = {}
    }
    
    init(selectedLanguageIndex: Int){
        self.selectedLanguageIndex = selectedLanguageIndex
        self.onSaveTapped = { _ in }
        self.onCancelTapped = {}
    }
    
    
    init(
        selectedLanguageIndex: Int,
        onSaveTapped: @escaping (Int) -> Void,
        onCancelTapped: @escaping () -> Void
    ) {
        self.selectedLanguageIndex = selectedLanguageIndex
        self.onSaveTapped = onSaveTapped
        self.onCancelTapped = onCancelTapped
    }
    
    
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                
                VStack(alignment:.leading) {
                    
                    VStack(spacing:16) {
                        LanguageItemView(
                            isSelected: selectedLanguageIndex == LanguageChangeView.turkishIndex,
                            image: Image("ic_flag_turkey"),
                            text: "Türkçe",
                            onTap: {  selectedLanguageIndex = LanguageChangeView.turkishIndex }
                        )
                        
                        LanguageItemView(
                            isSelected: selectedLanguageIndex == LanguageChangeView.englishIndex,
                            image: Image("ic_flag_uk"),
                            text: "English",
                            onTap: {  selectedLanguageIndex = LanguageChangeView.englishIndex }
                        )
                        
                        LanguageItemView(
                            isSelected: selectedLanguageIndex == LanguageChangeView.russianIndex,
                            image: Image("ic_flag_russia"),
                            text: "русский",
                            onTap: {  selectedLanguageIndex = LanguageChangeView.russianIndex }
                        )
                        
                    }
                    
                    Spacer().frame(height:20)
                    
                    Button {
                        onSaveTapped(selectedLanguageIndex)
                    } label: {
                        Text("Save")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                    
                    Spacer().frame(height:16)
                    
                    Button {
                        onCancelTapped()
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }


                }
                .padding()
                
             
            }
        }
    }
}

struct LanguageChange_Previews: PreviewProvider {
    static var previews: some View {
        LanguageChangeView()
    }
}
