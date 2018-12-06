//
//  MovieShortInfoCellModel.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

class MovieShortInfoCellModel: BaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "MovieShortInfoCelldenttifier"
    }
    
    var title: String
    var original_title: String?
    var genres: [MovieGenre]
    var vote_average: Float
    var imdb_vote_average: Float
    
    
    init(_ info: MovieInfoResultItem) {
        self.title = info.title
        self.original_title = info.original_title
        self.genres = info.genres
        self.vote_average = info.vote_average
        self.imdb_vote_average = info.vote_average
        super.init()
        
        
    }
}
