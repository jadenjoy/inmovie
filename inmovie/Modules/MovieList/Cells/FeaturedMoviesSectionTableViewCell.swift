//
//  File.swift
//  inmovie
//
//  Created by Константин on 03/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

protocol FeaturedMoviesSectionTableViewCellProtocol {
    func setSectionTitle(title sectionHeaderLabelText: String)
    func setSectionAnnotation(annotation sectionAnnotationlText: String)
}

class FeaturedMoviesSectionTableViewCell: UITableViewCell, ModelRepresentable {
    
    
    var model: CellIdentifiable? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let model = model as? FeaturedMoviesSectionCellModel else {
            return
        }
        setSectionTitle(title: model.title)
        featuredTemplatesCoversCollection.reloadData()
        
    }
    
    /**
     Заголовок
     */
    
    let sectionHeader: UILabel = {
        let sectionHeaderLabel = UILabel()
        
        
        return sectionHeaderLabel
    }()
    
    /**
     Текст количества или "ЕЩЕ" или другое
     */
    
    let sectionAnnotation: UILabel = {
        let sectionAnnotationLabel = UILabel()
        
        return sectionAnnotationLabel
    }()
    
    


    
    /**
     Коллекция обложек шаблонов с названием
     */
    let featuredTemplatesCoversCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        let featuredTemplatesCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        featuredTemplatesCollectionView.clipsToBounds = false
        featuredTemplatesCollectionView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        return featuredTemplatesCollectionView
    }()
    
    
    // Инициализация
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        featuredTemplatesCoversCollection.register(FeaturesMovieCardCollectionViewCell.self, forCellWithReuseIdentifier: "MovieListCellModelIdenttifier")
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

/*
 Формирование вью
 */

extension FeaturedMoviesSectionTableViewCell {
    
    func setupViews()  {
        self.addSubview(sectionHeader)
        
        self.addSubview(featuredTemplatesCoversCollection)
        featuredTemplatesCoversCollection.delegate = self
        featuredTemplatesCoversCollection.dataSource = self
        setupConstraints()
    }
}


/*
 Констрейнты
 */

extension FeaturedMoviesSectionTableViewCell {
    
    func setupConstraints()  {
        
        // Заголовок
        self.sectionHeader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.sectionHeader, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.sectionHeader, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        

        
        // Коллекция шаблонов
        self.featuredTemplatesCoversCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.featuredTemplatesCoversCollection, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.featuredTemplatesCoversCollection, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self.featuredTemplatesCoversCollection, attribute: .top, relatedBy: .equal, toItem: self.sectionHeader, attribute: .bottom, multiplier: 1.0, constant: 15).isActive = true
        NSLayoutConstraint(item: self.featuredTemplatesCoversCollection, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 260).isActive = true
        NSLayoutConstraint(item: self.featuredTemplatesCoversCollection, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: -30).isActive = true
        
        
    }
}






/*
 Заголовок секции
 */
extension FeaturedMoviesSectionTableViewCell: FeaturedMoviesSectionTableViewCellProtocol {
    
    // Установка значения заголовка секции
    func setSectionTitle(title sectionHeaderLabelText: String)  {
        sectionHeader.attributedText = TPAttributedString(string: sectionHeaderLabelText, for: AppTypography.sectionHeader).makeString()
    }
    
    // Установка значения аннотации секции
    func setSectionAnnotation(annotation sectionAnnotationlText: String)  {
        sectionAnnotation.attributedText = TPAttributedString(string: sectionAnnotationlText, for: AppTypography.movieCoverRating, ofColor: AppTypography.movieCoverRating.color).makeString()
        
    }
    
}


/*
 Коллекция обложек шаблонов
 */
extension FeaturedMoviesSectionTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 260)
    }
}

extension FeaturedMoviesSectionTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let models = model as? FeaturedMoviesSectionCellModel else {
            return 0
        }
        
        return models.moviesModels?.count ?? 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Загрузили модель?
        guard let model = model as? FeaturedMoviesSectionCellModel else {
            return UICollectionViewCell()
        }
        // Фильмы есть?
        guard let models = model.moviesModels else {
            return UICollectionViewCell()
            
        }
        // Нормално все, отдаем ячейку
        let cellModel = models[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel.cellIdentifier, for: indexPath) as! FeaturesMovieCardCollectionViewCell
        cell.model = cellModel
        return cell
        
    }
    
    
}


