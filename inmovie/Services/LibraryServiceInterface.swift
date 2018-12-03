//
//  LibraryServiceInterface.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

protocol LibraryServiceInterface {
    func loadMoviesList(genre: Int, completion: @escaping ([FeaturedMoviesSection]) -> ())
}
