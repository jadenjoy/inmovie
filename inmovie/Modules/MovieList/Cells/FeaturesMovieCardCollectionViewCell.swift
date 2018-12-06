//
//  MovieTableViewCell.swift
//  inmovie
//
//  Created by Константин on 29/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

class FeaturesMovieCardCollectionViewCell: UICollectionViewCell, ModelRepresentable {
    
    var model: CellIdentifiable? {
        didSet {
            updateViews()
        }
    }
    
    // Элементы вида
    
    /**
     Избражение фильма
     */

    var movieImage: UIImageView = {
        let movieImageImageView = UIImageView()
        movieImageImageView.backgroundColor = #colorLiteral(red: 0.8633803934, green: 0.8633803934, blue: 0.8633803934, alpha: 1)
        movieImageImageView.contentMode = .scaleAspectFill
        movieImageImageView.layer.cornerRadius = 10
        movieImageImageView.clipsToBounds = true
        return movieImageImageView
    }()
    
    
    /**
     Тень
     */
    let shadowContainer: UIView = {
        let shadowView = UIView()
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.25
        shadowView.layer.shadowOffset = CGSize.zero
        shadowView.layer.shadowRadius = 20
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 100, height: 200), cornerRadius: 20).cgPath
        shadowView.layer.shouldRasterize = true
        shadowView.layer.rasterizationScale = UIScreen.main.scale
        return shadowView
    }()
    /**
     Название фильма
     */
    var movieTitle: UILabel = {
        let movieTitleLabel = UILabel()
        return movieTitleLabel
    }()
 
    /**
     Продолжительность фильма
     */
    var movieDuration: UILabel = {
        let movieDurationLabel = UILabel()
        return movieDurationLabel
    }()
    
    /**
     Категории фильма
     */
    var movieCategory: UILabel = {
        let movieCategoryLabel = UILabel()
        return movieCategoryLabel
    }()
    
    
    /**
     Иконка звезды
     */
    var starIcon: UIImageView = {
        let starIconImageView = UIImageView()
        starIconImageView.image = #imageLiteral(resourceName: "Star Icon")
        starIconImageView.clipsToBounds = true
        return starIconImageView
    }()
    
    /**
     Рейтинг фильма
     */
    var movieRating: UILabel = {
        let movieRaitingLabel = UILabel()
        return movieRaitingLabel
    }()
    
    /**
     Количество обзоров
     */
    var movieVoteCount: UILabel = {
        let movieVoteCountLabel = UILabel()
        return movieVoteCountLabel
    }()
    
    
    
    func updateViews() {
        guard let model = model as? MovieListCellModel else {
            
            return
        }
        //setMovieImage(image: UIImage(named: "cover" + String(Int.random(in: 1 ... 10))) ?? #imageLiteral(resourceName: "Template 2"))
        
        setMovieImage(url: URL(string: "https://image.tmdb.org/t/p/w200" + model.poster_path)!)
        setMovieTitle(title: model.title)
        setMovieCategory(category: "2018, Фантастика")
        setMovieRaiting(rating: String(model.vote_average))
        
    }
    
    
    // Инициализация
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


/*
 Формирование вью
 */

extension FeaturesMovieCardCollectionViewCell {
    
    func setupViews()  {
        //self.backgroundColor = UIColor.red
        self.addSubview(self.shadowContainer)
        self.addSubview(self.movieImage)
        self.addSubview(self.movieTitle)
        self.addSubview(self.movieCategory)
        self.addSubview(self.starIcon)
        self.addSubview(self.movieRating)
        setupConstraints()
    }
    
    
    func setupConstraints() {
        
        //  Изображение фильма
        self.movieImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 140).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true

        // Тень Изображение шаблона
        self.shadowContainer.translatesAutoresizingMaskIntoConstraints = false
        // Длина
        NSLayoutConstraint(item: self.shadowContainer, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100).isActive = true
        // Высота
        NSLayoutConstraint(item: self.shadowContainer, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200).isActive = true
        // Полошение по Y
        NSLayoutConstraint(item: self.shadowContainer, attribute: .top, relatedBy: .equal, toItem: self.movieImage, attribute: .top, multiplier: 1.0, constant: 16).isActive = true
        // Положение по X
        NSLayoutConstraint(item: self.shadowContainer, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        
        
        // Название фильма
        self.movieTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieTitle, attribute: .top, relatedBy: .equal, toItem: self.movieImage, attribute: .bottom, multiplier: 1.0, constant: 11).isActive = true
        NSLayoutConstraint(item: self.movieTitle, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieTitle, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        
        // Год и категория
        self.movieCategory.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieCategory, attribute: .top, relatedBy: .equal, toItem: self.movieTitle, attribute: .bottom, multiplier: 1.0, constant: 3).isActive = true
        NSLayoutConstraint(item: self.movieTitle, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieTitle, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
   
        
        // Иконка рейтинга
        self.starIcon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.starIcon, attribute: .top, relatedBy: .equal, toItem: self.movieCategory, attribute: .bottom, multiplier: 1.0, constant: 7).isActive = true
        NSLayoutConstraint(item: self.starIcon, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 13).isActive = true
            NSLayoutConstraint(item: self.starIcon, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 13).isActive = true
        NSLayoutConstraint(item: self.starIcon, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        
        // Рейтинг
        self.movieRating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieRating, attribute: .centerY, relatedBy: .equal, toItem: self.starIcon, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieRating, attribute: .left, relatedBy: .equal, toItem: self.starIcon, attribute: .right, multiplier: 1.0, constant: 2).isActive = true
        NSLayoutConstraint(item: self.movieRating, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
    
    }
    
}




/*
 Сеттеры для вью
 */

extension FeaturesMovieCardCollectionViewCell: MovieTableViewCellProtocol {
    
    /**
     Установка изображения
     
     - Parameter image: Обложка фильма
     */
    func setMovieImage(url: URL) {
        movieImage.load(url: url)
    }
    
    
    /**
     Установка названия фильма
     
     - Parameter title: Название фильма
     */
    func setMovieTitle(title: String) {
        let mutableString = TPAttributedString(string: title, for: AppTypography.movieCoverTitle, paragraph: .left)
        movieTitle.attributedText = mutableString.makeString()
    }
    

    
    /**
     Установка категории фильма
     
     - Parameter category: Категории фильма
     */
    func setMovieCategory(category: String) {
        let mutableString = TPAttributedString(string: category, for: AppTypography.movieCoverCategory, paragraph: .left)
        movieCategory.attributedText = mutableString.makeString()
    }
    
    /**
     Установка рейтинга фильма
     
     - Parameter rating: Рейтинг фильма
     */
    func setMovieRaiting(rating: String) {
        let mutableString = TPAttributedString(string: rating, for: AppTypography.movieCoverRating, paragraph: .left)
        movieRating.attributedText = mutableString.makeString()
    }

    
    
}
