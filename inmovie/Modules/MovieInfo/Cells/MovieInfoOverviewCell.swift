//
//  MovieInfoOverviewCell.swift
//  inmovie
//
//  Created by Константин on 05/12/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation
import UIKit

protocol MovieInfoOverviewCellProtocol {
    func setOverview(text: String)
    func setSectionTitle(title: String)
}

class MovieInfoOverviewCell:  MovieInfoBaseCell {
  
    /**
     Название фильма
     */
    
    let sectionTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    
    /**
     Название на языке оригинала
     */
    
    let overviewText: UILabel = {
        let label = UILabel()
        label.numberOfLines = 10
        return label
    }()
    
    override func updateViews() {
        guard let model = model as? MovieOverviewCellModel else {
            
            return
        }
        setSectionTitle(title: "Сюжет")
        setOverview(text: model.overview)
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

extension MovieInfoOverviewCell {
    
    func setupViews()  {
            self.addSubview(sectionTitle)
            self.addSubview(overviewText)
        setupConstraints()
    }
}

/*
 Констрейнты
 */

extension MovieInfoOverviewCell {
    
    func setupConstraints()  {
        
        // Название
        self.sectionTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.sectionTitle, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.sectionTitle, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        NSLayoutConstraint(item: self.sectionTitle, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        
        // Название на языке оригинала
        self.overviewText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self.overviewText, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: self.overviewText, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        NSLayoutConstraint(item: self.overviewText, attribute: .top, relatedBy: .equal, toItem: self.sectionTitle, attribute: .bottom, multiplier: 1.0, constant: 5).isActive = true
        NSLayoutConstraint(item: self.overviewText, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        
    }
    
}

/*
 Сеттеры для вью
 */

extension MovieInfoOverviewCell: MovieInfoOverviewCellProtocol {
   
    /**
     Установка описания
     
     - Parameter  text: Текст описания
     */
    func setOverview(text: String) {
        let mutableString = TPAttributedString(string: text, for: AppTypography.basicText, paragraph: .left)
        overviewText.attributedText = mutableString.makeString()
    }
    
    /**
     Установка названия секции
     
     - Parameter title: Название секции
     */
    func setSectionTitle(title: String) {
        let mutableString = TPAttributedString(string: title, for: AppTypography.sectionHeader, paragraph: .left)
        sectionTitle.attributedText = mutableString.makeString()
    }
    
    
    
    
}

