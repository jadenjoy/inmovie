//
//  MovieListProtocols.swift
//  inmovie
//
//  Created Константин on 27/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//
//  Template generated by Tundaikin Konstantin
//

import Foundation

protocol MovieListViewProtocol: class {
}

protocol MovieListPresenterProtocol: class {
    var router: MovieListRouterProtocol! { set get }
    func configureView()
}

protocol MovieListInteractorProtocol: class {
}

protocol MovieListRouterProtocol: class {
}

protocol MovieListConfiguratorProtocol: class {
    func configure(with viewController: MovieListViewController)
}