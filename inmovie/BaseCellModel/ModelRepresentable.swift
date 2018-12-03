//
//  ModelRepresentable.swift
//  inmovie
//
//  Created by Константин on 29/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

protocol ModelRepresentable {
    var model: CellIdentifiable? { get set }
}
