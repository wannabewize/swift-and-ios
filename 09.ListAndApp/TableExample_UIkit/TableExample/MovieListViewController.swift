//
//  MovieListViewController.swift
//  MovieListApp
//
//  Created by MRF on 2021/07/15.
//

import UIKit

class MovieListViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let item = movies[indexPath.row]
        cell.imageView?.image = UIImage(named: item.image)
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.director

        return cell
    }
}
