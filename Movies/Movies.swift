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
    let rating: Double?
    let popularity: Double?
    
    enum CodingKeys: String, CodingKey{
        case id, title, overview, popularity
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case releaseDate = "release_date"
        case rating = "vote_average"
    }
}

struct MovieList: Decodable{
    let results: [Movie]
}

