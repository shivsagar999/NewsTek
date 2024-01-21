//
//  NewsResource.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 21/01/24.
//

import Foundation

class NewsResource {
    
    func getNewsArticles(completionHandler: @escaping (Articles?, NTError?) -> ()) {
        let url = URL(string: Constants.newsArticleURL)!
        
        let httpUtility = HttpUtility()
        
        httpUtility.getAPIData(requestURL: url, resultType: Articles.self) { data, err in
            guard err == nil else {
                completionHandler(nil, err)
                return
            }
            
            completionHandler(data, nil)
        }
    }
}
