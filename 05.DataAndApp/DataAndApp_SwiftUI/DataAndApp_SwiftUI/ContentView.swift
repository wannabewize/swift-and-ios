//
//  ContentView.swift
//  DataAndApp_SwiftUI
//
//  Created by Jaehoon Lee on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var movie = Movie(poster: "moving_image",
                      title: "무빙",
                      cast: ["류승룡", "한효주", "조인성", "이정하", "고윤정"],
                      releaseYear: 2023,
                      grade: "18세 이상",
                      synopsis: "초능력을 숨긴 채 현재를 살아가는 아이들과, 과거의 아픈 비밀을 감춘 채 살아온 부모들이 시대와 세대를 넘어 닥치는 거대한 위험에 함께 맞서는 초능력 휴먼 액션 시리즈",
                      genre: ["스릴러", "슈퍼 히어로", "액션 어드백처"])
    
    var body: some View {
        VStack {
            ZStack {
                Image(movie.poster)
                
                VStack {
                    Spacer()
                    HStack {
                        Text(movie.title)
                            .foregroundStyle(.white)
                            .font(Font.system(size: 40))
                        Spacer()
                    }
                    .padding(.leading, 20)
                }
            }
            .frame(height: 200)
            
            VStack(spacing: 10) {
                HStack {
                    Text("공개")
                        .frame(width: 80, alignment: .leading)
                    Text("\(movie.releaseYear)")
                    Spacer()
                }
                HStack {
                    Text("관람등급")
                        .frame(width: 80, alignment: .leading)
                    Text(movie.grade)
                    Spacer()
                }
                HStack {
                    Text("장르")
                        .frame(width: 80, alignment: .leading)
                    Text(movie.genre.joined(separator: ", "))
                    Spacer()
                }
                
                Text(movie.synopsis)
                
                HStack {
                    Text("출연")
                        .frame(width: 80, alignment: .leading)
                    Text(movie.cast.joined(separator: ", "))
                    Spacer()
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Spacer()
            
            VStack {
                HStack {
                    Text("좋아하실 만한 콘텐츠")
                    Spacer()
                }
                HStack {
                    Image("movie1")
                        .resizable()
                    Image("movie2")
                        .resizable()
                }
                
            }
            .frame(height: 120)
            .padding(.bottom, 10)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
        }
        .padding(0)
    }
}

#Preview {
    ContentView()
}
