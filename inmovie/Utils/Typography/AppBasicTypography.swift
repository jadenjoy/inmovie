//
//  AppBasicTypography.swift
//  inmovie
//
//  Created by Константин on 30/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//



class AppTypography {
    
    static var titleOne: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Bold", size: 28, color: #colorLiteral(red: 0.2431372549, green: 0.2588235294, blue: 0.3098039216, alpha: 1), kern: -0.5)
    
    static var titleTwo: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Bold", size: 24, color: #colorLiteral(red: 0.2431372549, green: 0.2588235294, blue: 0.3098039216, alpha: 1), kern: -0.5)
    
    static var titleThree: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Bold", size: 22, color: #colorLiteral(red: 0.2431372549, green: 0.2588235294, blue: 0.3098039216, alpha: 1), kern: -0.5)
    
    static var titleFour: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Bold", size: 20, color: #colorLiteral(red: 0.2431372549, green: 0.2588235294, blue: 0.3098039216, alpha: 1), kern: -0.5)
    
    static var sectionHeader: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Bold", size: 18, color: #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1), kern: -0.45)

    static var movieCoverTitle: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Medium", size: 13, color: #colorLiteral(red: 0.2, green: 0.1921568627, blue: 0.1921568627, alpha: 1), kern: 0.35)
    
    static var movieCoverCategory: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Medium", size: 13, color: #colorLiteral(red: 0.5176470588, green: 0.5176470588, blue: 0.5176470588, alpha: 1), kern: 0.35)
    
    static var movieCoverRating: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Bold", size: 17, color: #colorLiteral(red: 0.9411764706, green: 0.4745098039, blue: 0.05490196078, alpha: 1), kern: 0.54)
    
    static var movieInfoTitle: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Semibold", size: 26, color: #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1), kern: -0.7)
    
    static var movieOriginalTitle: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Medium", size: 14, color: #colorLiteral(red: 0.5176470588, green: 0.5176470588, blue: 0.5176470588, alpha: 1), kern: 0.38)
  
    static var movieInfoRating: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Semibold", size: 26, color: #colorLiteral(red: 1, green: 0.4196078431, blue: 0.03137254902, alpha: 1), kern: -0.7)
    
    static var orangeButtonTitle: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Medium", size: 15, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), kern: -0.38)
    
    static var genreButtonTitle: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProDisplay-Medium", size: 12, color: #colorLiteral(red: 0.5176470588, green: 0.5176470588, blue: 0.5176470588, alpha: 1), kern: 0.32)
    
    static var basicText: TypographyStyleable =
        AppTypographyStyleStruct(name: "SFProText-Regular", size: 14, color: #colorLiteral(red: 0.368627451, green: 0.368627451, blue: 0.368627451, alpha: 1), kern: -0.05)
}
