//
//  movie.swift
//  MovieList
//
//  Created by Dace Laizane on 11/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import Foundation
struct Movie {
    
    let name: String
    let genre: String
    let cover: String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let names = DataManager.shared.name
        let genres = DataManager.shared.genre
        let cover = DataManager.shared.cover
        
        for index in 0..<names.count{
            let movie = Movie(name: names[index], genre: genres[index], cover: cover[index])
            movies.append(movie)
        }
        return movies
    }
}
