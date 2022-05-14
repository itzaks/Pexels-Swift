//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 12.05.22.
//

import Foundation

extension PexelsSwift {
    struct ContentResults<T: Codable>: Codable {
        enum CodingKeys: String, CodingKey {
            case photos, media, videos, page
            case perPage = "per_page"
            case totalResults = "total_results"
            case previousPage = "prev_page"
            case nextPage = "next_page"
        }
        var photos: Array<PSPhoto>? // When searching, or featured
        var media: Array<T>? // When fetching from collections
        var videos: Array<PSVideo>? // When fetching videos
        var page: Int
        var perPage: Int
        var totalResults: Int
        var previousPage: String?
        var nextPage: String?
    }

    struct CollectionResults: Codable {
        enum CodingKeys: String, CodingKey {
            case collections, page
            case perPage = "per_page"
            case totalResults = "total_results"
            case previousPage = "prev_page"
            case nextPage = "next_page"
        }

        var collections: Array<PSCollectionCategory>
        var page: Int
        var perPage: Int
        var totalResults: Int
        var previousPage: String?
        var nextPage: String?
    }
}