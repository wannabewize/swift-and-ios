//
//  ViewController.swift
//  DataAndApp
//
//  Created by Jaehoon Lee on 10/9/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.lightGray
        grayView.frame = CGRect(x: 20, y: 100, width: 400, height: 200)
        view.addSubview(grayView)
        
        // Hello World label
        let labelFrame = CGRect(x: 40, y: 30, width: 120, height: 30)
        let helloLabel = UILabel(frame: labelFrame)
        helloLabel.text = "Hello World"
        helloLabel.font = UIFont.systemFont(ofSize: 20)
        helloLabel.textColor = UIColor.white
        grayView.addSubview(helloLabel)
        
        // Title
        let titleLabel = UILabel()
        grayView.addSubview(titleLabel)
        // 위치 : 부모뷰와 중앙 일치
        titleLabel.center = grayView.center
        titleLabel.text = "스토리보드를 이용한 앱"
        titleLabel.textColor = UIColor.red
        titleLabel.font = UIFont.preferredFont(forTextStyle:
                                                UIFont.TextStyle.title1)
        titleLabel.sizeToFit()
        
        // 애셋 내 이미지 추가
        // 이미지 뷰 - 이미지
        
        let imageFrame = CGRect(x: 10, y: 320, width: 400, height: 200)
        let imageView = UIImageView(frame: imageFrame)
        view.addSubview(imageView)
        imageView.image = UIImage(named: "model_s")
        
        // SF Symbol을 이용한 이미지 출력
        let imageView2 = UIImageView()
        imageView2.image = UIImage(systemName: "car.side")
        // 중앙, 자동차 이미지에서 10포인트
        imageView2.frame.origin = CGPoint(x: imageView.frame.minX + 10, y: imageView.frame.maxY + 10)
        imageView2.frame.size = CGSize(width: 200, height: 100)
        view.addSubview(imageView2)
    }
}

// Xcode15 이상. 이전 버전에서는 삭제 후 동작시킬 것.
#Preview {
    ViewController()
}
