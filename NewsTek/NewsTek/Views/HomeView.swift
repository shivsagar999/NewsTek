//
//  HomeView.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import SwiftUI

struct HomeView: View {
    
    let aticles = [Article(author: "Shiv", title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry", url: "http://rss.cnn.com/~r/rss/cnn_topstories/~3/KwE80_jkKo8/a-sa-dd-3", source: "CNN", image: "https://cdn.cnn.com/cnnnext/dam/assets/150325082152-social-gfx-cnn-logo-super-169.jpg", category: "general", language: "en", country: "us", publishedAt: Date()),
                   Article(author: "Shiv", title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry", url: "http://rss.cnn.com/~r/rss/cnn_topstories/~3/KwE80_jkKo8/a-sa-dd-3", source: "CNN", image: "https://cdn.cnn.com/cnnnext/dam/assets/150325082152-social-gfx-cnn-logo-super-169.jpg", category: "general", language: "en", country: "us", publishedAt: Date())]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(aticles, id: \.id) { article in
                    ZStack {
                        NewsRow(article: article)
                        NavigationLink(destination: NewsDetails(article: article)) {
                            EmptyView()
                        }
                    }
                    
                  
                    
                    
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.gray.opacity(0.05))
            .scrollIndicators(.hidden)
            .navigationTitle("NewsTek")
            
        }
        
      
    }
        
        
}

#Preview {
    HomeView()
}
