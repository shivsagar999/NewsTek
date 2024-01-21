//
//  NewsDetails.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import SwiftUI

struct NewsDetails: View {
    var article: Article
    var body: some View {
        ScrollView {
            
            Text(article.title)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
            AsyncImage(url: URL(string: article.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(.rect(cornerRadius: 5))
                case .failure(_):
                    Image(systemName: "exclamationmark.triangle")
                        .imageScale(.large)
                        .foregroundColor(.red)
                @unknown default:
                    EmptyView()
                }
            }
            
            Text(article.description)
                .multilineTextAlignment(.center)
            
            
           
          
                
        }
        .padding()
        
        
    }
}

#Preview {
    NewsDetails(article: Article(author: "Shiv", title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry", url: "http://rss.cnn.com/~r/rss/cnn_topstories/~3/KwE80_jkKo8/a-sa-dd-3", source: "CNN", image: "https://cdn.cnn.com/cnnnext/dam/assets/150325082152-social-gfx-cnn-logo-super-169.jpg", category: "general", language: "en", country: "us", publishedAt: Date()))
}
