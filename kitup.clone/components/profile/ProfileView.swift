//
//  ProfileView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 13.02.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var areNotificationsEnabled = false
    @State var isLanguageSheetPresented = false
    @State var isEmailSendRepresented = false
    var body: some View {

        Form {
            Section(header: Text("Profile Settings")) {
                HStack {
                    Text("E- Posta")
                    Spacer()
                    Text("Oguzhanaslan@hotmail.com")
                }
                
                HStack {
                    Text("Memberhip")
                    Spacer()
                    Text("Standart")
                }
                
                HStack {
                    Text("Upgrade now")
                    Spacer()
                }
            }
            
            Section(header: Text("Settings")) {
                HStack {
                    Toggle(isOn: $areNotificationsEnabled) {
                        Text("Enable Notifications:  ")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                    .tint(.red)
                }
                
                HStack {
                    Image(systemName: "shield")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.red)
                    Spacer().frame(width:8)
                    Text("Privacy")
                    Spacer()
                        .frame(height:30)
                }.onTapGesture {
                    if let url = URL(string: "https://www.kitup.net/gizlilik") {
                       UIApplication.shared.open(url)
                    }
                }
                
                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 20, height: 24)
                        .foregroundColor(.red)
                    Spacer().frame(width:12)
                    Text("Contract")
                    Spacer()
                }.onTapGesture {
                    if let url = URL(string: "https://www.kitup.net/sozlesme") {
                       UIApplication.shared.open(url)
                    }
                }
                
                
                HStack {
                    Image(systemName: "questionmark")
                        .resizable()
                        .frame(width: 18, height: 24)
                        .foregroundColor(.red)
                    
                    Spacer().frame(width:16)
                    Text("Frequently Asked Questions")
                    Spacer()
                }.onTapGesture {
                    if let url = URL(string: "https://www.kitup.net/sikca-sorulanlar/") {
                       UIApplication.shared.open(url)
                    }
                }
                
                HStack {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.red)
                    Spacer().frame(width:8)
                    Text("Send a Feedback")
                    Spacer()
                }.onTapGesture {
                    isEmailSendRepresented.toggle()
                }.sheet(isPresented: $isEmailSendRepresented) {
                    //EmailComposerView()
                }
                
                HStack {
                    
                    Image(systemName: "pencil.and.ellipsis.rectangle")
                        .resizable()
                        .frame(width: 28, height: 24)
                        .foregroundColor(.red)
                    Spacer().frame(width:6)
                    Text("Language")
                    Spacer()
                }
                .onTapGesture {
                    isLanguageSheetPresented.toggle()
                }
                .sheet(isPresented: $isLanguageSheetPresented)  {
                    LanguageChangeView(
                        selectedLanguageIndex: LanguageChangeView.englishIndex,
                        onSaveTapped: { _ in isLanguageSheetPresented = false },
                        onCancelTapped: { isLanguageSheetPresented = false }
                    )
                }

            }
            
            Section(header: Text("Premium")) {
                HStack {
                    Image(systemName: "gobackward")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.red)
                    Spacer().frame(width:8)
                    Text("Restore")
                    Spacer()
                }

                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.red)
                    Spacer().frame(width:8)
                    Text("Subscription Settings")
                    Spacer()
                }

                HStack {

                    Image(systemName: "nosign")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.red)
                    Text("Sign out")
                    Spacer()
                }
            }
            
            HStack {
                Spacer()
                VStack(alignment:.center) {
                    Image("kitupImage")
                        .resizable()
                        .frame(width:68, height:36)
                        .padding()
                    Text("1.8.9.0")
                        .fontWeight(.light)
                        .font(.caption)
                    
                    Spacer().frame(height:36)
                    
                    Text("Copyright")
                        .fontWeight(.light)
                        .font(.caption)
                    Text("ⓒ2021")
                        .fontWeight(.light)
                        .font(.caption)
                }
                Spacer()
            }
        
//            VStack(alignment: .leading) {
//
//            }
        }

      
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
