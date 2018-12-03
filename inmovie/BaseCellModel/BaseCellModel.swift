//
//  BaseCellModel.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

class BaseCellModel: CellIdentifiable {
    let automaticHeight: Float = -1.0
    
    var cellIdentifier: String {
        return ""
    }
    
    var cellHeight: Float {
        return automaticHeight
    }
}
