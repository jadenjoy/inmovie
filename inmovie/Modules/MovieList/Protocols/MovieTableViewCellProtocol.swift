//
//  MovieTableViewCellProtocol.swift
//  inmovie
//
//  Created by Константин on 30/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

protocol MovieTableViewCellProtocol {
   func setMovieImage(image: UIImage)
    func setMovieTitle(title: String)
    
    func setMovieCategory(category: String)
    func setMovieRaiting(rating: String)

    
    
}
