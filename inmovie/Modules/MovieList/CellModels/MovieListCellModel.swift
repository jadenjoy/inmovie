//
//  MovieCellModel.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//


import Foundation
import UIKit

class MovieListCellModel: BaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "MovieListCellModelIdenttifier"
    }
    
    var adult: Bool
    var backdrop_path: String
    var genre_ids: [Int]?
    var id: Int
    var original_language: String
    var original_title: String
    var overview: String
    var popularity: Float
    var poster_path: String
    var release_date: String
    var title: String
    var video: Bool
    var vote_average: Float
    var vote_count: Int
    var action: ActionHandler?
    var selected: Bool
    

    
    init(_ movie: MovieResultItem, action: ActionHandler? = nil) {
        self.adult = movie.adult
        self.backdrop_path = movie.backdrop_path
        self.genre_ids = movie.genre_ids
        self.id = movie.id
        self.original_language = movie.original_language
        self.original_title = movie.original_title
        self.overview = movie.overview
        self.popularity = movie.popularity
        self.poster_path = movie.poster_path
        self.release_date = movie.release_date
        self.title = movie.title
        self.video = movie.video
        self.vote_average = movie.vote_average
        self.vote_count = movie.vote_count
        self.selected = false
        super.init()
        

    }
}
