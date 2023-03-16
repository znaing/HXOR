//
//  WebView.swift
//  H4XOR
//
//  Created by Zaid Naing on 3/14/23.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
