//
//  Article.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import Foundation


// MARK: - Articles
struct News: Codable {
    var status: String = String()
    var totalResults: Int?
    var articles: [Article]?
    var code: String?
    var message: String?
}

// MARK: - Article
struct Article: Codable {
    let id: UUID = UUID()
    let source: Source
    let author: String?
    let title, description: String
    let url: String
    let urlToImage: String?
    let publishedAt: String?
    let content: String
    
    private enum CodingKeys: String, CodingKey {
            case  source, author, title, description, url, urlToImage, publishedAt, content
    }
    
    init( source: Source, author: String?, title: String, description: String, url: String, urlToImage: String?, publishedAt: String, content: String) {
        self.source = source
        self.author = author
        self.title = title
        self.description = description
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String
}
