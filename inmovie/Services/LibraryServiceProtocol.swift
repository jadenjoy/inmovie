//
//  LibraryServiceInterface.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

protocol LibraryServiceProtocol {
    func loadMoviesList(genre: Int, completion: @escaping ([FeaturedMoviesSection]) -> ())
    func loadMovieInfo(withId id: Int, completion: @escaping (MovieInfoResultItem) -> ())
}
