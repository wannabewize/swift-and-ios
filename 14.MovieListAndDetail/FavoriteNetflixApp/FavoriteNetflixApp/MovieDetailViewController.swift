//
//  MovieDetailViewController.swift
//  MovieListAndDetailApp
//
//  Created by MRF on 2021/07/15.
//

import UIKit

class MovieDetailViewController: UIViewController {

    var movie: Movie!
    
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
        // 내비게이션 바에 제목 출력
        self.title = movie.title
        
        titleLabel.text = movie.title
        posterImageView.image = UIImage(named: movie.image)
        genreLabel.text = movie.genre
        directorLabel.text = movie.director
        actorsLabel.text = movie.actor
    }
}
