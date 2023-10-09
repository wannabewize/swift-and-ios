//
//  ViewController.swift
//  AppUI_Storyboard
//
//  Created by wannabewize on 10/9/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 화면에 나타나기 전 준비
    override func viewWillAppear(_ animated: Bool) {
        helloLabel.text = "Hello World"
        titleLabel.text = "스토리보드로 앱 만들기"
        
        imageView1.image = UIImage(named: "model_s")
        imageView2.image = UIImage(systemName: "car.side")
    }
}

