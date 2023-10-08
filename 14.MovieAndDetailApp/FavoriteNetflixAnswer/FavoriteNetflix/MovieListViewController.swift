//
//  MovieListViewController.swift
//  FavoriteNetflix
//
//  Created by MRF on 2021/04/19.
//

import UIKit

class MovieListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Favorite Netflix"
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


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPath(for: (sender as! UITableViewCell)),
           let detailVC = segue.destination as? MovieDetailViewController {
            detailVC.movie = movies[index.row]
        }
    }


}
