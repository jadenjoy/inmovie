//
//  MovieListPresenter.swift
//  inmovie
//
//  Created Константин on 27/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//
//  Template generated by Tundaikin Konstantin
//

import Foundation

class MovieListPresenter: MovieListPresenterProtocol {
    
    weak var view: MovieListViewProtocol!
    var interactor: MovieListInteractorProtocol!
    var router: MovieListRouterProtocol!
    
    required init(view: MovieListViewProtocol) {
        self.view = view
    }
    
    // MARK: - MovieListPresenterProtocol methods
    
    func configureView() {
        
    }
    
}
