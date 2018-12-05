//
//  LibraryService.swift
//  inmovie
//
//  Created by Константин on 28/11/2018.
//  Copyright © 2018 Константин. All rights reserved.
//

import Foundation

class LibraryService: LibraryServiceProtocol {

    

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
    
    
    /**
     Загрузка списка фильмов
     
     - Parameter id: genre
     */
    func loadMoviesList(genre: Int, completion: @escaping ([FeaturedMoviesSection]) -> ()) {
        let libraryToReturn: [MovieResultItem] = [MovieResultItem(
            adult: false,
            backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
            genre_ids: [878],
            id: 335983,
            original_language: "en",
            original_title: "Фантастические твари и где они обитают",
            overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed.",
            popularity: 263.71,
            poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
            release_date: "2018-10-03",
            title: "Фантастические твари и где они обитают",
            video: false,
            vote_average: 6.5,
            vote_count: 2929),
          MovieResultItem(
            adult: false,
            backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
            genre_ids: [878],
            id: 335983,
            original_language: "en",
            original_title: "Сделано в америке",
            overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed.",
            popularity: 263.71,
            poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
            release_date: "2018-10-03",
            title: "Сделано в америке",
            video: false,
            vote_average: 6.5,
            vote_count: 2929),
          MovieResultItem(
            adult: false,
            backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
            genre_ids: [878],
            id: 335983,
            original_language: "en",
            original_title: "Сделано в америке",
            overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed.",
            popularity: 263.71,
            poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
            release_date: "2018-10-03",
            title: "Сделано в америке",
            video: false,
            vote_average: 6.5,
            vote_count: 2929),
          MovieResultItem(
            adult: false,
            backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
            genre_ids: [878],
            id: 335983,
            original_language: "en",
            original_title: "Сделано в америке",
            overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed.",
            popularity: 263.71,
            poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
            release_date: "2018-10-03",
            title: "Сделано в америке",
            video: false,
            vote_average: 6.5,
            vote_count: 2929),
          MovieResultItem(
            adult: false,
            backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
            genre_ids: [878],
            id: 335983,
            original_language: "en",
            original_title: "Сделано в америке",
            overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed.",
            popularity: 263.71,
            poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
            release_date: "2018-10-03",
            title: "Сделано в америке",
            video: false,
            vote_average: 6.5,
            vote_count: 2929),
          MovieResultItem(
            adult: false,
            backdrop_path: "/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
            genre_ids: [878],
            id: 335983,
            original_language: "en",
            original_title: "Сделано в америке",
            overview: "Eddie Brock is a reporter, investigating people who want to go unnoticed. But after he makes a terrible discovery at the Life Foundation, he begins to transform into ‘Venom’.  The Foundation has discovered creatures called symbiotes, and believes they’re the key to the next step in human evolution. Unwittingly bonded with one, Eddie discovers he has incredible new abilities - and a voice in his head that’s telling him to embrace the darkness.  One of Marvel’s most celebrated anti-heroes comes to the big screen in ‘Venom’, starring Tom Hardy, Michelle Williams and Riz Ahmed.",
            popularity: 263.71,
            poster_path: "/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
            release_date: "2018-10-03",
            title: "Сделано в америке",
            video: false,
            vote_average: 6.5,
            vote_count: 2929)
                                                  ]
        
        let futuredSection = [
            FeaturedMoviesSection(title: "Большое обновление подписки", countTitle: "Все", description: "", movies: libraryToReturn),
            FeaturedMoviesSection(title: "Большое обновление подписки", countTitle: "Все", description: "", movies: libraryToReturn),
            FeaturedMoviesSection(title: "Большое обновление подписки", countTitle: "Все", description: "", movies: libraryToReturn),
            FeaturedMoviesSection(title: "Большое обновление подписки", countTitle: "Все", description: "", movies: libraryToReturn),
            FeaturedMoviesSection(title: "Скоро в кино", countTitle: "Все", description: "", movies: libraryToReturn)
        ]
        completion(futuredSection)
    }
    
    
    /**
     Загрузка информации о  фильме
     
     - Parameter id: genre
     */
    
    // Gример ответа от сервера
    //adult: false
    //backdrop_path: "/87hTDiay2N2qWyX4Ds7ybXi9h8I.jpg"
    //belongs_to_collection: null
    //budget: 63000000
    //genres: [{id: 18, name: "Drama"}]
    //0: {id: 18, name: "Drama"}
    //id: 18
    //name: "Drama"
    //homepage: "http://www.foxmovies.com/movies/fight-club"
    //id: 550
    //imdb_id: "tt0137523"
    //original_language: "en"
    //original_title: "Fight Club"
    //overview: "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground "fight clubs" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion."
    //popularity: 27.116
    //poster_path: "/adw6Lq9FiC9zjYEpOqfq03ituwp.jpg"
    //production_companies: [{id: 508, logo_path: "/7PzJdsLGlR7oW4J0J5Xcd0pHGRg.png", name: "Regency Enterprises",…},…]
    //0: {id: 508, logo_path: "/7PzJdsLGlR7oW4J0J5Xcd0pHGRg.png", name: "Regency Enterprises",…}
    //id: 508
    //logo_path: "/7PzJdsLGlR7oW4J0J5Xcd0pHGRg.png"
    //name: "Regency Enterprises"
    //origin_country: "US"
    //1: {id: 711, logo_path: "/tEiIH5QesdheJmDAqQwvtN60727.png", name: "Fox 2000 Pictures",…}
    //2: {id: 20555, logo_path: null, name: "Taurus Film", origin_country: ""}
    //3: {id: 54051, logo_path: null, name: "Atman Entertainment", origin_country: ""}
    //4: {id: 54052, logo_path: null, name: "Knickerbocker Films", origin_country: "US"}
    //5: {id: 25, logo_path: "/qZCc1lty5FzX30aOCVRBLzaVmcp.png", name: "20th Century Fox", origin_country: "US"}
    //6: {id: 4700, logo_path: "/A32wmjrs9Psf4zw0uaixF0GXfxq.png", name: "The Linson Company",…}
    //production_countries: [{iso_3166_1: "DE", name: "Germany"}, {iso_3166_1: "US", name: "United States of America"}]
    //0: {iso_3166_1: "DE", name: "Germany"}
    //iso_3166_1: "DE"
    //name: "Germany"
    //1: {iso_3166_1: "US", name: "United States of America"}
    //release_date: "1999-10-15"
    //revenue: 100853753
    //runtime: 139
    //spoken_languages: [{iso_639_1: "en", name: "English"}]
    //0: {iso_639_1: "en", name: "English"}
    //iso_639_1: "en"
    //name: "English"
    //status: "Released"
    //tagline: "Mischief. Mayhem. Soap."
    //title: "Fight Club"
    //video: false
    //vote_average: 8.4
    //vote_count: 14403
    func loadMovieInfo(withId id: Int, completion: @escaping (MovieInfoResultItem) -> ()) {
        let infoToReturn: MovieInfoResultItem = MovieInfoResultItem(
            adult: false,
            backdrop_path: "/87hTDiay2N2qWyX4Ds7ybXi9h8I.jpg",
            belongs_to_collection: false,
            budget: 63000000,
            genres: [MovieGenre(id: 1, name: "Драма"), MovieGenre(id: 1, name: "Приключения"), MovieGenre(id: 1, name: "Триллер")],
            homepage: "http://www.foxmovies.com/movies/fight-club",
            id: 550,
            imdb_id: "tt0137523",
            original_language: "en",
            original_title: "Tinker Kinker Last Jedi",
            overview: "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
            popularity: 27.116,
            poster_path: "/adw6Lq9FiC9zjYEpOqfq03ituwp.jpg",
            production_companies: [ProductionCompany(id: 508, logo_path: "/qZCc1lty5FzX30aOCVRBLzaVmcp.png", name: "Regency Enterprises", origin_country: "US")],
            production_countries: [ProductionCountry(iso_3166_1: "DE", name: "Germany")],
            release_date: "1999-10-15",
            revenue: 100853753,
            runtime: 139,
            spoken_languages: [SpokenLanguage(iso_639_1: "en", name: "English")],
            status: "Released",
            tagline: "Mischief. Mayhem. Soap.",
            title: "Последние джедаи",
            video: false,
            vote_average: 8.4,
            vote_count: 14404
        )
        completion(infoToReturn)
    }
    

    
    
    
}
