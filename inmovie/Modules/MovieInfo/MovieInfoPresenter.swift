//
//  MovieInfoPresenter.swift
//  inmovie
//
//  Created Константин on 04/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//
//  Template generated by Tundaikin Konstantin
//

import Foundation

class MovieInfoPresenter: MovieInfoPresenterProtocol {
    
    
    weak var view: MovieInfoViewProtocol!
    var interactor: MovieInfoInteractorProtocol!
    var router: MovieInfoRouterProtocol!
    
    required init(view: MovieInfoViewProtocol) {
        self.view = view
    }
    
    // MARK: - MovieInfoPresenterProtocol methods
    
    func configureView() {
        interactor.loadMovieInfo(withId: view.id)
    }
    
    
    
    
    /**
     Метод отвечает за подготовку данных для вью после информации о фильме
     
     - Parameter info: Информация о фильме
     */
     func movieInfoDidRecive(info: MovieInfoResultItem) {
        let movieInfoModel = MovieInfoModel(info)
        print(info.overview)
        view.updateView(info: movieInfoModel)
    }

   
    
}


