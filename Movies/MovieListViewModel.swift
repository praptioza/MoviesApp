//
//  MovieListViewModel.swift
//  Movies
//
//  Created by user232715 on 3/24/23.
//

import Foundation
import SwiftUI

class MovieListViewModel : ObservableObject{
    @Published var movies = [Movie]()
 
    
    init(){
        fetchMovies()
    }

    func fetchMovies(){
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=4cc907f17d6cd1052288d9d4c2a150f9&language=en-US&page=1")else{
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with:url) { data,response,error in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            if let data = data{
                do{
                    let movieList = try JSONDecoder().decode(MovieList.self, from:data)
                    DispatchQueue.main.async{
                        self.movies = movieList.results
                    }
                }
            
                catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
}
