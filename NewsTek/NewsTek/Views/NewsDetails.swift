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
            
            AsyncImage(url: URL(string: article.urlToImage ?? "")) { phase in
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
            
            Text(article.content)
                .multilineTextAlignment(.center)
        
        }
        .padding()
        
        
    }
}

#Preview {
    NewsDetails(article: Article(
        source: Source(id: "", name: "hg"), author: "businessinsider.com",
        title: "I'm an autos reporter who's driven plenty of EVs. My first experience with a Tesla was still eye-opening",
        description: "Tesla Model 3 Hertz rental in my driveway Nora Naughton Driving a Tesla is unlike any other experience I've had behind the wheel. The nearly buttonless interior was hard to get used to. I'm still not a fan of one-pedal driving. In the more than 10 years I've …",
        url: "https://biztoc.com/x/577bc24bf1600ecb",
        urlToImage: "https://c.biztoc.com/p/577bc24bf1600ecb/s.webp",
        publishedAt: "2024-01-21T11:08:08Z", content: ""))
}
