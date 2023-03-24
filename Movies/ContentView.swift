//
//  ContentView.swift
//  Movies
//
//  Created by user232715 on 3/23/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var movielistViewModel = MovieListViewModel()
    
    var body: some View {
        NavigationView{
            List(movielistViewModel.movies, id: \.id) { movie in
                HStack{
                    VStack{
                        Text(movie.title)
                    }
                }
            }.navigationTitle("Popular Movies")
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
