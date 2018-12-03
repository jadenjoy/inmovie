//
//  MovieCellModelDelegate.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

protocol FeaturedSectionModelDelegate: class {
    func didTapMovieCell(withId: Int)
}
