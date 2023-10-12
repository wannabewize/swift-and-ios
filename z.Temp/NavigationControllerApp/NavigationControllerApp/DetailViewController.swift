//
//  DetailViewController.swift
//  NavigationControllerApp
//
//  Created by MRF on 2021/07/15.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label.text = data
    }
}
