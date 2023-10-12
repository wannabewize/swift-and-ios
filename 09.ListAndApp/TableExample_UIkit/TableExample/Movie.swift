//
//  Movie.swift
//  Moviest
//
//  Created by wannabewize on 2020/05/10.
//  Copyright © 2020 wannabewize. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    
    var title: String
    var director: String
    var actor: String
    var year: Int
    var image: String
    var genre: String
}

var movies: [Movie] = [
    Movie(title: "킹덤", director: "김성훈, 박인제", actor: "주지훈, 배두나, 류승룡 외", year: 2019, image: "kingdom", genre: "사극, 미스터리, 좀비 아포칼립스, 스릴러"),
    Movie(title: "러브, 데스 + 로봇", director: "팀 밀러 외", actor: "토퍼 그레이스, 메리 엘리자베스 윈스티드, 게리 콜", year: 2019, image: "love_death_robots", genre: "애니메이션"),
    Movie(title: "위쳐", director: "알리크 사하로프, 샤를로테 브렌스트룀", actor: "헨리 카빌, 안야 차로트라, 프레이아 앨런", year: 2019, image: "the_witcher", genre: "판타지"),
    Movie(title: "퀸스 갬빗", director: "스콧 프랭크, 앨런 스콧", actor: "안야 테일러조이, 토마스 브로디 생스터", year: 2020, image: "the_queens_gambit", genre: "드라마"),
    Movie(title: "스위트홈", director: "이응복, 장영우, 박소현", actor: "송강, 이진욱, 이시영", year: 2020, image: "sweet_home", genre: "공포, 크리처, 생존, 액션"),
    Movie(title: "승리호", director: "조성희", actor: "송중기, 김태리, 진선규, 유해진", year: 2021, image: "space_sweepers", genre: "SF, 액션")
]

