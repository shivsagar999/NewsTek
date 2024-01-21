//
//  NewsResource.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 21/01/24.
//

import Foundation

class NewsResource {
    
    func getNewsArticles(completionHandler: @escaping (News?, NTError?) -> ()) {
        let q = URLQueryItem(name: "q", value: "udupi")
        let apiKey = URLQueryItem(name: "apiKey", value: "6bf096866e4a4baeaab49a8685db5d86")
        var urlComponents = URLComponents(string: Constants.newsArticleURL)!
        urlComponents.queryItems = [q, apiKey]
        let url = urlComponents.url!
        var request = URLRequest(url: url)
        request.httpMethod = "get"
        
        let httpUtility = HttpUtility()
        
        httpUtility.getAPIData(request: request, resultType: News.self) { data, err in
            completionHandler(data, err)
        }
    }
}


//var request = URLRequest(url: requestURL)
//request.httpMethod = "post"
//request.httpBody = requestBody
//request.allHTTPHeaderFields = ["content-type": "application/json"]
