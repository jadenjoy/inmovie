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
        let movieImageView = UIImageView()
        movieImageView.contentMode = .scaleAspectFill
        movieImageView.layer.cornerRadius = 10
        movieImageView.clipsToBounds = true
        return movieImageView
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
        setMovieImage(image: #imageLiteral(resourceName: "cover2"))
        
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
        self.backgroundColor = UIColor.red
//        self.addSubview(self.movieImage)
//        self.addSubview(self.movieTitle)
//        self.addSubview(self.movieDuration)
//        self.addSubview(self.movieCategory)
//        self.addSubview(self.starIcon)
//        self.addSubview(self.movieRating)
//        self.addSubview(self.movieVoteCount)
        //setupConstraints()
    }
    
    
    func setupConstraints() {
        
        //  Изображение фильма
        self.movieImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 148).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 233).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.movieImage, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true

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
    func setMovieImage(image: UIImage) {
        movieImage.image = image
    }
    
    
    /**
     Установка названия фильма
     
     - Parameter title: Название фильма
     */
    func setMovieTitle(title: String) {
        let mutableString = TPAttributedString(string: title, for: AppTypography.subTitle, paragraph: .left)
        movieTitle.attributedText = mutableString.makeString()
    }
    
    /**
     Установка продолжительности фильма
     
     - Parameter duration: Продолжительность фильма
     */
    func setMovieDuration(duration: String) {
        
    }
    
    /**
     Установка категории фильма
     
     - Parameter category: Категории фильма
     */
    func setMovieCategory(category: String) {
        
    }
    
    /**
     Установка рейтинга фильма
     
     - Parameter rating: Рейтинг фильма
     */
    func setMovieRaiting(rating: String) {
        
    }
    
    /**
     Установка количества оценок фильма
     
     - Parameter votes: Количество оценок фильма
     */
    func setMovieVoteCount(votes: Int) {
        
    }
    
    
}
