//
//  MovieDetailView.swift
//  Movies
//
//  Created by user232715 on 3/24/23.
//

import Foundation
import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
       
            VStack(alignment: .leading, spacing: 10){
                Text(movie.title)
                    .font(.system(size:25))
                    .bold()
                    .lineLimit(nil)
                
                
                
                if let releaseDate = movie.releaseDate {
                    Text("Release Date: \(releaseDate)")
                        .font(.subheadline)
                }
                
                if let popularity = movie.popularity{
                    Text("Popularity: \(popularity)")
                    .font(.subheadline)
                }
                
                
                Text(movie.overview)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(nil)
                
                if let rating = movie.rating{
                    Text("Rating: \(rating)")
                    .font(.subheadline)
                }
                
            }
            .padding()
            //.navigationTitle(movie.title)
            //  .navigationBarTitleDisplayMode(.inline)
        }
    }

