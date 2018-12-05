//
//  MovieInfoProtocols.swift
//  inmovie
//
//  Created Константин on 04/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//
//  Template generated by Tundaikin Konstantin
//

import Foundation

protocol MovieInfoViewProtocol: class {
    func updateView(info: MovieInfoModel)
}

protocol MovieInfoPresenterProtocol: class {
    var router: MovieInfoRouterProtocol! { set get }
    func configureView()
    func movieInfoDidRecive(info: MovieInfoResultItem)
}

protocol MovieInfoInteractorProtocol: class {
    var libraryService: LibraryServiceProtocol! {set get}
    func loadMovieInfo(withId: Int)
    
}

protocol MovieInfoRouterProtocol: class {
}

protocol MovieInfoConfiguratorProtocol: class {
    func configure(with viewController: MovieInfoViewController)
}
