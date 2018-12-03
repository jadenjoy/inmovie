//
//  TypographyService.swift
//  inmovie
//
//  Created by Константин on 30/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//


import Foundation
import UIKit


protocol TypographyStyleable {
    var name: String { get set }
    var size: CGFloat { get set }
    var color: UIColor { get set }
    var kern: CGFloat { get set }
    
}

struct AppTypographyStyleStruct: TypographyStyleable {
    var name: String
    var size: CGFloat
    var color: UIColor
    var kern: CGFloat
}


enum typographyParagraphStyle {
    case center
    case left
    case right
}

private protocol Typographable {
    
    // var returnAttributedString: [NSAttributedString.Key : Any] { get set }
    var returnAttributedString: NSMutableAttributedString { get set }
    func makeString() -> NSMutableAttributedString
    func setParagraphStyle(paragraph: typographyParagraphStyle)
    //func attributedString(string textString: String, for typographyConstant: TypographyStyleable)
}

class TPAttributedString: Typographable {
    
    // Возвращаемая строка
    var returnAttributedString: NSMutableAttributedString = NSMutableAttributedString()
    
    
    // Базовый инициалайзер
    init(string textString: String, for typographyConstant: TypographyStyleable){
        let attributes = [
            NSAttributedString.Key.foregroundColor : typographyConstant.color,
            NSAttributedString.Key.kern : typographyConstant.kern,
            NSAttributedString.Key.font : UIFont(name:  typographyConstant.name, size: typographyConstant.size) ?? UIFont.systemFont(ofSize: typographyConstant.size, weight: .bold)
            ] as [NSAttributedString.Key : Any]
        self.returnAttributedString = NSMutableAttributedString(string: textString, attributes: attributes)
    }
    
    // Инициалайзер с указанием цвета
    init(string textString: String, for typographyConstant: TypographyStyleable, ofColor: UIColor){
        let attributes = self.attributesForString(fontName: typographyConstant.name, fontSize: typographyConstant.size, fontColor: ofColor, fontKern: typographyConstant.kern)
        self.returnAttributedString = NSMutableAttributedString(string: textString, attributes: attributes)
    }
    
    // Инициалайзер с указанием размера
    init(string textString: String, for typographyConstant: TypographyStyleable, ofSize: CGFloat){
        let attributes = self.attributesForString(fontName: typographyConstant.name, fontSize: ofSize, fontColor: typographyConstant.color, fontKern: typographyConstant.kern)
        self.returnAttributedString = NSMutableAttributedString(string: textString, attributes: attributes)
    }
    
    //Инициалайзер с указанием параграф стайла
    init(string textString: String, for typographyConstant: TypographyStyleable, paragraph: typographyParagraphStyle){
        let attributes = self.attributesForString(fontName: typographyConstant.name, fontSize: typographyConstant.size, fontColor: typographyConstant.color, fontKern: typographyConstant.kern)
        self.returnAttributedString = NSMutableAttributedString(string: textString, attributes: attributes)
        self.setParagraphStyle(paragraph: paragraph)
    }
    
    
    // Инициалайзер с кастомным параграфом
    init(string textString: String, for typographyConstant: TypographyStyleable, paragraph: NSMutableParagraphStyle){
        let attributes = self.attributesForString(fontName: typographyConstant.name, fontSize: typographyConstant.size, fontColor: typographyConstant.color, fontKern: typographyConstant.kern)
        self.returnAttributedString = NSMutableAttributedString(string: textString, attributes: attributes)
        self.returnAttributedString.addAttribute(.paragraphStyle, value: paragraph, range: NSMakeRange(0, returnAttributedString.length))
    }
    
    
    func attributesForString(fontName: String, fontSize: CGFloat, fontColor: UIColor, fontKern: CGFloat) -> [NSAttributedString.Key : Any] {
        let attributes = [
            NSAttributedString.Key.foregroundColor : fontColor,
            NSAttributedString.Key.kern : fontKern,
            NSAttributedString.Key.font : UIFont(name:  fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize, weight: .regular)
            ] as [NSAttributedString.Key : Any]
        return attributes
    }
    
    
    // Установка параметров параграфа
    func setParagraphStyle(paragraph: typographyParagraphStyle) {
        let paraStyle = NSMutableParagraphStyle.init()
        switch paragraph {
        case .center:
            paraStyle.alignment = .center
        case .left:
            paraStyle.alignment = .left
        case .right:
            paraStyle.alignment = .right
        }
        self.returnAttributedString.addAttribute(kCTParagraphStyleAttributeName as NSAttributedString.Key, value: paraStyle, range: NSMakeRange(0, self.returnAttributedString.length))
    }
    
    
    // Получение готовой строки
    func makeString() -> NSMutableAttributedString {
        return self.returnAttributedString
    }
    
    
    
    
}
