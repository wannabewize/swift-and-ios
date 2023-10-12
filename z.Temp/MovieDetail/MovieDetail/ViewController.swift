//
//  ViewController.swift
//  MovieDetail
//
//  Created by Jaehoon Lee on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    let movie = Movie(title: "킹덤", director: "김성훈, 박인제", actor: "주지훈, 배두나, 류승룡 외", year: 2019, image: "kingdom", genre: "사극, 미스터리, 좀비 아포칼립스, 스릴러")
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var actorsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = movie.title
        posterImageView.image = UIImage(named: movie.image)
        genreLabel.text = movie.genre
        directorLabel.text = movie.director
        actorsLabel.text = movie.actor
    }


}

