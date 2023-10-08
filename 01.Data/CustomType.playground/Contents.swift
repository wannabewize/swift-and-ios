// 영화 정보를 다루는 Movie 타입 정의
struct Movie {
    let title: String
    let releaseYear: Int
}

let moving = Movie(title: "무빙", releaseYear: 2023)
print("moving :", moving)

struct Actor {
    let name: String
    let birthYear: Int
    var profileImage: String?
    var filmography: [Movie]
}

let ryu = Actor(name: "류승룡", birthYear: 1970, profileImage: nil, filmography: [moving])

let extreamJob = Movie(title: "극한직업", releaseYear: 2019)
// Error. use var
// ryu.filmography.append(extreamJob)


var goyounjung = Actor(name: "고윤정", birthYear: 1996, profileImage: nil, filmography: [moving])

goyounjung.profileImage = "https://site-api.maa.co.kr/uploads/Kakao_Talk_Photo_2021_10_13_16_51_19_001_d55e431913.jpg"

let alchemyOfSoul = Movie(title: "환혼", releaseYear: 2020)
goyounjung.filmography.append(alchemyOfSoul)

print(goyounjung)
