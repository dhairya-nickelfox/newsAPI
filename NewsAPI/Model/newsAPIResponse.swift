//
//  NetworkManager.swift
//  NewsAPI
//
//  Created by Dhairya Bhardwaj on 17/02/25.
//

import Foundation
struct newsAPIResponse:Codable{
    let status:String?
    let totalResults:Int?
    let articles:[Article]?
    
    let code:String?
    let message:String?
}
