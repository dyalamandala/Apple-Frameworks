//
//  SafariView.swift
//  Apple-FrameWorks
//
//  Created by Divya on 23/02/25.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    let url : URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
