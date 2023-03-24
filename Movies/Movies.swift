//
//  Movies.swift
//  Movies
//
//  Created by user232715 on 3/24/23.
//

import Foundation
import SwiftUI


struct Movie: Decodable{
    let id: Int
    let title: String
    let overview: String
    let posterPath: String?
    let backdropPath: String?
    let releaseDate: String?
    let voteAvg: Double
    
    enum CodingKeys: String, CodingKey{
        case id, title, overview
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case releaseDate = "release_date"
        case voteAvg = "vote_average"
    }
}

struct MovieList: Decodable{
    let results: [Movie]
}

/*
struct MovieDetail: Hashable, Decodable, Identifiable {
    var id: Int
    var overview: String
    var releaseDate: String
    var voteAverage: Double
    var backdropPath: String?
    var movies: [MovieInfo]
    
    enum CodingKeys: String, CodingKey {
        case id
        case overview
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case backdropPath = "backdrop_path"
        case movies = "results"
    }
    
    var posterURL: URL? {
        guard let posterPath = movies.first?.posterPath else {
            return nil
        }
        return URL(string: "https://image.tmdb.org/t/p/w342\(posterPath)")
    }
    
    var backdropURL: URL? {
        guard let backdropPath = backdropPath else {
            return nil
        }
        return URL(string: "https://image.tmdb.org/t/p/w780\(backdropPath)")
    }
}
*/
