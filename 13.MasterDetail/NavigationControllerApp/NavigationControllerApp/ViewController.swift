//
//  ViewController.swift
//  NavigationControllerApp
//
//  Created by MRF on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController {
            let selected = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
            detailVC.data = selected
        }
    }
}

