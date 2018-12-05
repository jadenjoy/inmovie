//
//  MovieInfoBaseCell.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//
import Foundation
import UIKit

class MovieInfoBaseCell: UITableViewCell, ModelRepresentable {
    var model: CellIdentifiable? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
    }
}
