//
//  ViewController.swift
//  DataAndApp_Storyboard
//
//  Created by Jaehoon Lee on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var castLabel: UILabel!
        
    var movie = Movie(poster: "moving_image",
                      title: "무빙",
                      cast: ["류승룡", "한효주", "조인성", "이정하", "고윤정"],
                      releaseYear: 2023,
                      grade: "18세 이상",
                      synopsis: "초능력을 숨긴 채 현재를 살아가는 아이들과, 과거의 아픈 비밀을 감춘 채 살아온 부모들이 시대와 세대를 넘어 닥치는 거대한 위험에 함께 맞서는 초능력 휴먼 액션 시리즈",
                      genre: ["스릴러", "슈퍼 히어로", "액션 어드백처"])

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 여러 줄로 출력
        castLabel.numberOfLines = 0
        genreLabel.numberOfLines = 0
        synopsisLabel.numberOfLines = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        posterImageView.image = UIImage(named: movie.poster)
        titleLabel.text = movie.title
        releaseLabel.text = "\(movie.releaseYear) 공개"
        genreLabel.text = movie.genre.joined(separator: ", ")
        synopsisLabel.text = movie.synopsis
        castLabel.text = movie.cast.joined(separator: ", ")
    }
}

