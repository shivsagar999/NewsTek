//
//  HomeViewModel.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import Foundation

enum ViewState<T> {
        case START
        case LOADING
        case SUCCESS(data: T)
        case FAILURE(error: NTError)
    }

class HomeViewModel: ObservableObject {
    
    let newsResource: NewsResource
    @Published var news: News = News()
    @Published var ntError: NTError = NTError.noDataReceived
    
    init (newsResource: NewsResource) {
        self.newsResource = newsResource
    }
    
    func getNews() {
        newsResource.getNewsArticles { data, err in
            DispatchQueue.main.async {
                guard err == nil, let data = data else {
                    self.ntError = err!
                    return
                }
                self.news = data
            }
            
        }
    }
    
    
}
