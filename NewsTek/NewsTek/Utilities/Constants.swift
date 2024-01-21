//
//  Constants.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 21/01/24.
//

import Foundation


struct Constants {
    
    
    static private let kBaseURL = "https://newsapi.org/v2/"
    
    static private let kEverythingURL = "everything"
    
    static var newsArticleURL: String {
        return kBaseURL + kEverythingURL
    }
}
