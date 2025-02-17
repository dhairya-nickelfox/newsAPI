//
//  ArticleListView.swift
//  NewsAPI
//
//  Created by Dhairya Bhardwaj on 17/02/25.
//

import SwiftUI

struct ArticleListView: View {
    let article:[Article]
    var body: some View {
        List{
            ForEach(article) { article in
                NewsView(article: article)
            }
            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    ArticleListView(article:Article.previewData)
}
