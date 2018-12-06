//
//  MovieInfoTopCoverCell.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

protocol MovieInfoTopCoverCellProtocol {
    func setMovieImage(url: URL)
}

class MovieInfoTopCoverCell:  MovieInfoBaseCell  {

    /**
     Избражение фильма
     */
    
    var movieImage: UIImageView = {
        let movieImageImageView = UIImageView()
        movieImageImageView.contentMode = .scaleAspectFill
        movieImageImageView.layer.cornerRadius = 0
        movieImageImageView.clipsToBounds = true
        return movieImageImageView
    }()
    
    /**
     Белый градиент
     */
    var gradientImage: UIImageView = {
        let gradientImageView = UIImageView()
        gradientImageView.contentMode = .scaleToFill
        gradientImageView.layer.cornerRadius = 0
        gradientImageView.clipsToBounds = true
        gradientImageView.image = #imageLiteral(resourceName: "WhiteGradient")
        return gradientImageView
    }()
    
    
    override func updateViews() {
        guard let model = model as? MovieTopCoverCellModel else {
            return
        }
        setMovieImage(url: URL(string: "https://image.tmdb.org/t/p/w500" + model.poster_path)!)
        //setMovieImage(image: UIImage(named: "cover" + String(Int.random(in: 1 ... 10))) ?? #imageLiteral(resourceName: "Template 2"))
        
    }
    
    
    // Инициализация
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}


/*
 Формирование вью
 */

extension MovieInfoTopCoverCell {
    
    func setupViews()  {
        self.addSubview(movieImage)
        
        self.addSubview(gradientImage)
        setupConstraints()
    }
}

/*
 Констрейнты
 */

extension MovieInfoTopCoverCell {
    
    func setupConstraints()  {
        
        // Заголовок
        self.movieImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieImage, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 510).isActive = true
         NSLayoutConstraint(item: self.movieImage, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        
        // Градиени
        self.gradientImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.gradientImage, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.gradientImage, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.gradientImage, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.gradientImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 160).isActive = true
    }
}


/*
 Сеттеры для вью
 */

extension MovieInfoTopCoverCell: MovieInfoTopCoverCellProtocol {

    
    
    /**
     Установка изображения
     
     - Parameter image: Обложка фильма
     */
    func setMovieImage(url: URL) {
        movieImage.load(url: url)
    }
    
 
    
    
}
