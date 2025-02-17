//
//  Model.swift
//  NewsAPI
//
//  Created by Dhairya Bhardwaj on 17/02/25.
//

import Foundation
private let dateFormatter = RelativeDateTimeFormatter()

struct Article:Codable,Equatable,Identifiable{
    var id:String{url}
    let source:Source
    
       let title: String
       let url: String
       let publishedAt: Date
       
       let author: String?
       let description: String?
       let urlToImage: String?
    
    var authorText: String {
            author ?? ""
        }
        
        var descriptionText: String {
            description ?? ""
        }
        
        
        
        var articleURL: URL {
            URL(string: url)!
        }
        
        var imageURL: URL? {
            guard let urlToImage = urlToImage else {
                return nil
            }
            return URL(string: urlToImage)
        }
    
    var captionText:String{
        "\(source.name) - \(dateFormatter.localizedString(for: publishedAt, relativeTo: Date()))"
    }

    
    
    static var previewData: [Article] {
            let previewDataURL = Bundle.main.url(forResource: "news", withExtension: "json")!
            let data = try! Data(contentsOf: previewDataURL)
            
            let jsonDecoder = JSONDecoder()
            jsonDecoder.dateDecodingStrategy = .iso8601
            
        let apiResponse = try! jsonDecoder.decode(newsAPIResponse.self, from: data)
            return apiResponse.articles ?? []
        }
}

struct Source:Codable,Equatable{
    let name :String
    
}
