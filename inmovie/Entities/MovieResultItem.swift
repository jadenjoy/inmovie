//
//  File.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

// Пример ответа от сервера
//adult: false
//backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg"
//genre_ids: [878]
//id: 335983
//original_language: "en"
//original_title: "Venom"
//overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed."
//popularity: 263.371
//poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg"
//release_date: "2018-10-03"
//title: "Venom"
//video: false
//vote_average: 6.5
//vote_count: 2424

struct MovieResultItem {
    var adult: Bool
    var backdrop_path: String
    var genre_ids: [Int]?
    var id: Int
    var original_language: String
    var original_title: String
    var overview: String
    var popularity: Float
    var poster_path: String
    var release_date: String
    var title: String
    var video: Bool
    var vote_average: Float
    var vote_count: Int
    
    
    
}
