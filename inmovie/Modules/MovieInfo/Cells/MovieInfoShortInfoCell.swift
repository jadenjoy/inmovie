//
//  MovieInfoShortInfoCell.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

protocol MovieInfoShortInfoCellProtocol {
    func setMovieTitle(title: String)
    func setMovieOriginalTitle(title: String)
    func setMovieIMDBRating(rating: Float)
    func setMovieRating(rating: Float)
    func setButtonTitle(title: String)
    func setGenres(genres: [MovieGenre])
}


class MovieInfoShortInfoCell:  MovieInfoBaseCell {
    
    
    /**
     Название фильма
     */
    
    let movieTitle: UILabel = {
        let movieTitleLabel = UILabel()
        return movieTitleLabel
    }()
    
    
    /**
     Название на языке оригинала
     */
    
    let movieOriginalTitle: UILabel = {
        let movieOriginalTitleLabel = UILabel()
        return movieOriginalTitleLabel
    }()
    
    
    /**
    Жанры фильма
 */
    let genresStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 15
        
        //s.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        return stackView
        
    }()
    
    let genreButton: UIButton = {
        let button = UIButton()
        //button.frame = CGRect(x: 0, y: 0, width: 73, height: 22)
        button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.setTitle("ДРАМА", for: .normal)
        //button.translatesAutoresizingMaskIntoConstraints = false
        //button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        //button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()

    /**
     IMDB rating
     */
    
    let imdbRating: UILabel = {
        let imdbRatingLabel = UILabel()
        return imdbRatingLabel
    }()
    
    /**
     IMDB rating подпись
     */
    
    let imdbRatingTitle: UILabel = {
        let imdbRatingTitleLabel = UILabel()
        return imdbRatingTitleLabel
    }()

    /**
     Movie rating
     */
    
    let movieRating: UILabel = {
        let label = UILabel()
        return label
    }()
    
    /**
     Movie rating подпись
     */
    
    let movieRatingTitle: UILabel = {
        let label = UILabel()
        return label
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
     кнопка оценить
     */
    // TODO : cделать отдельынй класс с кнопкой с тенью
    var rateButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 0.4196078431, blue: 0.03137254902, alpha: 1)
        //button.setBackgroundImage(#imageLiteral(resourceName: "Btn"), for: .normal)
        button.layer.cornerRadius = 19
        button.clipsToBounds = true
        button.setTitle("Оценить", for: .normal)

        
        return button
    }()
    
    /**
     Тень
     */
    let buttonShadow: UIView = {
        let shadowView = UIView()
        shadowView.layer.shadowColor = #colorLiteral(red: 1, green: 0.4196078431, blue: 0.03137254902, alpha: 1)
        shadowView.layer.shadowOpacity = 0.25
        shadowView.layer.shadowOffset = CGSize.zero
        shadowView.layer.shadowRadius = 15
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 100, height: 35), cornerRadius: 20).cgPath
        shadowView.layer.shouldRasterize = true
        shadowView.layer.rasterizationScale = UIScreen.main.scale
        return shadowView
    }()
    
    
    let bookmarkButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 14, height: 18)
        button.setBackgroundImage(#imageLiteral(resourceName: "Bookmark"), for: UIControl.State.normal)
        return button
    }()
    
    override func updateViews() {
        guard let model = model as? MovieShortInfoCellModel else {
            
            return
        }
        setMovieTitle(title: model.title)
        setMovieOriginalTitle(title: model.original_title ?? "")
        setMovieIMDBRating(rating: model.vote_average)
        setMovieRating(rating: model.vote_average)
        setButtonTitle(title: "Оценить")
        setGenres(genres: model.genres)
        //setMovieCategory(category: "2018, Фантастика")
        //setMovieRaiting(rating: String(model.vote_average))
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

extension MovieInfoShortInfoCell {
    
    func setupViews()  {
        self.addSubview(movieTitle)
        self.addSubview(movieOriginalTitle)
        self.addSubview(imdbRating)
        self.addSubview(starIcon)
        self.addSubview(imdbRatingTitle)
        self.addSubview(movieRating)
        self.addSubview(movieRatingTitle)
        self.addSubview(bookmarkButton)
        self.addSubview(buttonShadow)
        self.addSubview(rateButton)
        self.addSubview(genresStack)
        setupConstraints()
    }
}

/*
 Констрейнты
 */

extension MovieInfoShortInfoCell {
    
    func setupConstraints()  {
        
        // Название
        self.movieTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieTitle, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.movieTitle, attribute: .width, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 333).isActive = true
        NSLayoutConstraint(item: self.movieTitle, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 15).isActive = true
        
        // Название на языке оригинала
        self.movieOriginalTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieOriginalTitle, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.movieOriginalTitle, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.movieOriginalTitle, attribute: .top, relatedBy: .equal, toItem: self.movieTitle, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        
        
        // Список жанров
        self.genresStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: self.genresStack, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.genresStack, attribute: .top, relatedBy: .equal, toItem: self.movieOriginalTitle, attribute: .bottom, multiplier: 1.0, constant: 15).isActive = true
        
        
        
        // IMDB рейтинг
        self.imdbRating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.imdbRating, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
         NSLayoutConstraint(item: self.imdbRating, attribute: .top, relatedBy: .equal, toItem: self.genresStack, attribute: .bottom, multiplier: 1.0, constant: 20).isActive = true

        // IMDB рейтинг - подпись
        self.imdbRatingTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.imdbRatingTitle, attribute: .centerX, relatedBy: .equal, toItem: self.imdbRating, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.imdbRatingTitle, attribute: .top, relatedBy: .equal, toItem: self.imdbRating, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true

        // Иконка рейтинга
        self.starIcon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.starIcon, attribute: .centerY, relatedBy: .equal, toItem: self.imdbRating, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.starIcon, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 16).isActive = true
        NSLayoutConstraint(item: self.starIcon, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 16).isActive = true
        NSLayoutConstraint(item: self.starIcon, attribute: .left, relatedBy: .equal, toItem: self.imdbRating, attribute: .right, multiplier: 1.0, constant: 30).isActive = true
        
        //  рейтинг
        self.movieRating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieRating, attribute: .left, relatedBy: .equal, toItem: self.starIcon, attribute: .right, multiplier: 1.0, constant: 3).isActive = true
        NSLayoutConstraint(item: self.movieRating, attribute: .top, relatedBy: .equal, toItem: self.imdbRating, attribute: .top, multiplier: 1.0, constant: 0).isActive = true

        // рейтинг - подпись
        self.movieRatingTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.movieRatingTitle, attribute: .centerX, relatedBy: .equal, toItem: self.movieRating, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.movieRatingTitle, attribute: .top, relatedBy: .equal, toItem: self.movieRating, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true

        // Кнопка закладок
        self.bookmarkButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.bookmarkButton, attribute: .centerY, relatedBy: .equal, toItem: self.movieTitle, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.bookmarkButton, attribute: .left, relatedBy: .equal, toItem: self.movieTitle, attribute: .right, multiplier: 1.0, constant: 10).isActive = true
        NSLayoutConstraint(item: self.bookmarkButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 14).isActive = true
        NSLayoutConstraint(item: self.bookmarkButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 18).isActive = true
        
        
        // Кнопка оценить
        self.rateButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.rateButton, attribute: .top, relatedBy: .equal, toItem: self.movieRating, attribute: .top, multiplier: 1.0, constant: 5).isActive = true
        NSLayoutConstraint(item: self.rateButton, attribute: .left, relatedBy: .equal, toItem: self.movieRating, attribute: .right, multiplier: 1.0, constant: 35).isActive = true
        NSLayoutConstraint(item: self.rateButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 125).isActive = true
        NSLayoutConstraint(item: self.rateButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 35).isActive = true
        
        // Тень кнопки
        self.buttonShadow.translatesAutoresizingMaskIntoConstraints = false
        // Длина
        NSLayoutConstraint(item: self.buttonShadow, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100).isActive = true
        // Высота
        NSLayoutConstraint(item: self.buttonShadow, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 35).isActive = true
        // Полошение по Y
        NSLayoutConstraint(item: self.buttonShadow, attribute: .top, relatedBy: .equal, toItem: self.rateButton, attribute: .top, multiplier: 1.0, constant: 16).isActive = true
        // Положение по X
        NSLayoutConstraint(item: self.buttonShadow, attribute: .centerX, relatedBy: .equal, toItem: self.rateButton, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        // Полошение по Y
        NSLayoutConstraint(item: self.buttonShadow, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: -10).isActive = true
    }
    
}


/*
 Сеттеры для вью
 */

extension MovieInfoShortInfoCell: MovieInfoShortInfoCellProtocol {
    
    
    
    /**
     Установка названия фильма
     
     - Parameter title: Название фильма
     */
    func setMovieTitle(title: String) {
        let mutableString = TPAttributedString(string: title, for: AppTypography.movieInfoTitle, paragraph: .left)
        movieTitle.attributedText = mutableString.makeString()
    }

    /**
     Установка названия фильма
     
     - Parameter title: Название фильма
     */
    func setMovieOriginalTitle(title: String) {
        let mutableString = TPAttributedString(string: title, for: AppTypography.movieOriginalTitle, paragraph: .left)
        movieOriginalTitle.attributedText = mutableString.makeString()
    }
    
    
    /**
     Установка ИМДБ рейтинга
     
     - Parameter rating: Рейтинг фильма
     */
    func setMovieIMDBRating(rating: Float) {
        let mutableString = TPAttributedString(string: String(rating) + " / 10", for: AppTypography.movieInfoTitle, paragraph: .center)
        let mutableStringTitle = TPAttributedString(string: "IMDb", for: AppTypography.movieOriginalTitle, paragraph: .center)
        imdbRating.attributedText = mutableString.makeString()
        imdbRatingTitle.attributedText = mutableStringTitle.makeString()
    }
    
    /**
     Установка рейтинга
     
     - Parameter rating: Рейтинг фильма
     */
    func setMovieRating(rating: Float) {
        let mutableString = TPAttributedString(string: String(rating), for: AppTypography.movieInfoRating, paragraph: .center)
        let mutableStringTitle = TPAttributedString(string: "Рейтинг", for: AppTypography.movieOriginalTitle, paragraph: .center)
        movieRating.attributedText = mutableString.makeString()
        movieRatingTitle.attributedText = mutableStringTitle.makeString()
    }
    
    
    /**
     Установка кнопки
     
     - Parameter title: название кнопки
     */
    func setButtonTitle(title: String) {
        let mutableString = TPAttributedString(string: title, for: AppTypography.orangeButtonTitle, paragraph: .left)
        rateButton.setAttributedTitle(mutableString.makeString(), for: .normal)
    }
    
    
    /**
     Установка жанров
     
     - Parameter genres: Жанры
     */
    func setGenres(genres: [MovieGenre]) {
        for genre in genres {
            let button = UIButton()
            button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
            button.layer.borderColor = #colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 5
            button.clipsToBounds = true
            let mutableString = TPAttributedString(string: genre.name.uppercased(), for: AppTypography.genreButtonTitle, paragraph: .center)
            button.setAttributedTitle(mutableString.makeString(), for: .normal)
            button.contentEdgeInsets = UIEdgeInsets(top: 4, left: 14, bottom: 4, right: 14)
            //button.translatesAutoresizingMaskIntoConstraints = false
            //button.widthAnchor.constraint(equalToConstant: 80).isActive = true
            //button.heightAnchor.constraint(equalToConstant: 20).isActive = true
            genresStack.addArrangedSubview(button)
            
            
        }
    }
    
    
}
