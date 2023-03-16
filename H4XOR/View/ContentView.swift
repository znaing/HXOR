//
//  ContentView.swift
//  H4XOR
//
//  Created by Zaid Naing on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url) ){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }                
            }
            .navigationTitle("HXOR News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//    Post(id: "1", title: "SVB bank falls"),
//    Post(id: "2", title: "Pfizer's bet on Cancer"),
//    Post(id: "3", title: "Musk's Twitter Plans")
//]


