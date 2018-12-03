//
//  File.swift
//  inmovie
//
//  Created by Константин on 03/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

class FeaturedMoviesSectionCellModel: BaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "FeaturedMoviesSectionTableViewCellIdentifier"
    }
    
    weak var delegate: FeaturedSectionModelDelegate?
    
    var title: String
    var countTitle: String
    var description: String
    var moviesModels: [MovieListCellModel]?
    
    
    
    init(_ section: FeaturedMoviesSection) {
        
        self.title = section.title
        self.countTitle = section.countTitle
        self.description = section.description
        super.init()
        updateMovieListModels(section.movies)
        
    }
    
    
    func updateMovieListModels(_ moviesForModels: [MovieResultItem])  {
        self.moviesModels = [MovieListCellModel]()
        moviesForModels.forEach({
            let model = $0 as MovieResultItem
            let template = MovieListCellModel($0) { [weak self] in
                self?.delegate?.didTapMovieCell(withId: model.id)
            }
            self.moviesModels?.append(template)
        })
    }
}



