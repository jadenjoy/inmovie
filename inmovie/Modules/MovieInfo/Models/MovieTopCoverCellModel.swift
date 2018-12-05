//
//  MovieTopCoverCellModel.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

class MovieTopCoverCellModel: BaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "MovieTopCoverCellIdenttifier"
    }
    
    var poster_path: String
    
    
    init(_ info: MovieInfoResultItem) {
        self.poster_path = info.poster_path
        super.init()
        
        
    }
}
