//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Utsav  on 20/08/24.
//
import SwiftUI
import SafariServices
//import Foundation
struct SafariView: UIViewControllerRepresentable{
    let url : URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->  SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
