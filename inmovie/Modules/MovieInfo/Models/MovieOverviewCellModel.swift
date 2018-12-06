//
//  MovieOverviewCellModel.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

class MovieOverviewCellModel: BaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "MovieOverviewCelldenttifier"
    }
    
    var overview: String
    
    
    init(_ info: MovieInfoResultItem) {
        self.overview = info.overview
        super.init()
        
        
    }
}
