//
//  HomeViewModel.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    let newsResource: NewsResource
    @Published var articles: Articles
    
    init (newsResource: NewsResource) {
        self.newsResource = newsResource
    }
    
    func getNews() {
        newsResource.getNewsArticles { Data, err in
            <#code#>
        }
    }
    
    
}
