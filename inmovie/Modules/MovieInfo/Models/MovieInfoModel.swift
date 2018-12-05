//
//  MovieInfoCellModel.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

class MovieInfoModel: BaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "FeaturedMoviesSectionTableViewCellIdentifier"
    }
    
    weak var delegate: FeaturedSectionModelDelegate?
    
    var id: Int
    var title: String
    var description: String
    var tableCells: [CellIdentifiable]?
    
    
    
    init(_ info: MovieInfoResultItem) {
        
        self.id = info.id
        self.title = info.title
        self.description = info.overview
        self.tableCells = [CellIdentifiable]()
        super.init()
        // 1. Большое изображение (обложка фильма)
        let movieTopCover = MovieTopCoverCellModel(info)
        self.tableCells?.append(movieTopCover)
        
        // 2. Инфа о фильме (категории рейтинг)
        let shortInfo = MovieShortInfoCellModel(info)
        self.tableCells?.append(shortInfo)
        
        // 3. Описание фильма
        let overviewInfo = MovieOverviewCellModel(info)
        self.tableCells?.append(overviewInfo)
        
    }

}
