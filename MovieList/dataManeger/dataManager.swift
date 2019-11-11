//
//  dataManager.swift
//  MovieList
//
//  Created by Dace Laizane on 11/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import Foundation

class DataManager {

static let shared = DataManager()
    
    var name = [
    "12 Angry Men (1957)",
        "Pulp Fiction (1994)",
        "Schindler's List (1993)y",
        "The Dark Knight (2008)",
        "The Godfather (1972)",
        "The Godfather- Part II (1974)",
        "The Lord of the Rings- The Return of the King (2003)",
        "The Shawshank Redemption (1994)"
    ]
    
    var cover = [
    "12 Angry Men (1957) - Action",
        "Pulp Fiction (1994) - Action",
        "Schindler's List (1993) - History",
        "The Dark Knight (2008) - Action",
        "The Godfather (1972) - Drama",
        "The Godfather- Part II (1974) - Drama",
        "The Lord of the Rings- The Return of the King (2003) - Drama",
        "The Shawshank Redemption (1994) - Drama"
    ]
    
    var genre = [
    "Action",
        "Action",
        "SHistory",
        "Action",
        "Drama",
        "Drama",
        "Drama",
        "Drama"
    ]
}
