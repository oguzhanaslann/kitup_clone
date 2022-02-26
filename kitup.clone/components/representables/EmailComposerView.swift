//
//  EmailComposerView.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 26.02.2022.
//

import SwiftUI
import MessageUI

struct EmailComposerView: UIViewControllerRepresentable {
    
//    let emailData: EmailData
    
    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let emailComposer = MFMailComposeViewController()
//        emailComposer.mailComposeDelegate = context.coordinator
//        emailComposer.setSubject(emailData.subject)
//        emailComposer.setToRecipients(emailData.recipients)
//        emailComposer.setMessageBody(emailData.body, isHTML: emailData.isBodyHTML)
        return emailComposer
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: Context) {
        /* no-op */
    }
}

