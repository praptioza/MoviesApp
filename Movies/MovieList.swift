//
//  MovieList.swift
//  Movies
//
//  Created by user232715 on 3/24/23.
//

import Foundation
import SwiftUI

struct MovieListView : View {
    
    @ObservedObject var movielistViewModel = MovieListViewModel()
    //    init() {
    //        UIView.appearance().backgroundColor = UIColor.white
    //    }
    
    var body: some View {
        NavigationView{
            List(movielistViewModel.movies, id: \.id) { movie in
                NavigationLink(destination: MovieDetailView(movie:movie))
                {
                    HStack{
                        if let posterPath = movie.posterPath{
                            AsyncImage(url:URL(string: "https://image.tmdb.org/t/p/w154/\(posterPath)")){
                                image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                Color.gray
                                    .frame(width:80, height:80)
                            }.frame(width:80, height:80)
                             .cornerRadius(10)
                             .padding(.trailing)
                        }else{
                            Color.gray
                                .frame(width:80, height:80)
                                .cornerRadius(10)
                                .padding(.trailing)
                        }
                        VStack(alignment:.leading){
                            Text(movie.title)
                                .font(.custom("Georgia", fixedSize: 18))
                        }
                    }
                } //end of navigationlink
                .navigationTitle("Popular Movies")
                .foregroundColor(.black)
            }
            
        }
    }
    
    
    
    struct MovieList_Previews: PreviewProvider {
        static var previews: some View {
            MovieListView()
        }
    }
}
