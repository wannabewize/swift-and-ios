//
//  MoviesViewController.swift
//  Moviest
//
//  Created by wannabewize on 2019/10/06.
//  Copyright © 2019 wannabewize. All rights reserved.
//

import UIKit


class MoviesViewController: UITableViewController {
    
    var movies: [Movie] = [
        Movie(title: "Extraction", director: "Sam Hargrave", image: "Extraction"),
        Movie(title: "The Gentlemen", director: "Guy Ritchie",image: "TheGentlemen"),
        Movie(title: "The Lodge", director: "Severin Fiala, Veronika Franz", image: "TheLodge"),
        Movie(title: "Once Upon a Time in Hollywood", director: "Quentin Tarantino", image: "Hollywood"),
        Movie(title: "The Willoughbys", director: "Kris Pearn, Cory Evans", image: "Willoughby"),
        Movie(title: "El hoyo", director: "Galder Gaztelu-Urrutia", image: "Elhoyo"),
        Movie(title: "Gisaengchung", director: "Bong Joon Ho", image: "Gisaengchung"),
        Movie(title: "Star Wars: Episode IX - The Rise of Skywalker", director: "J.J. Abrams", image: "Starwars"),
        Movie(title: "Dangerous Lies", director: "Michael M. Scott", image: "DangerousLies"),
        Movie(title: "Knives Out", director: "Rian Johnson", image: "KnivesOut"),
        Movie(title: "Arkansas", director: "Clark Duke", image: "Arkansas"),
        Movie(title: "Avengers: Endgame", director: "Anthony Russo, Joe Russo", image: "AvengersEndgame")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell1", for: indexPath)
        let movie = movies[indexPath.row]
        cell.textLabel!.text = movie.title
        cell.detailTextLabel!.text = movie.director
        cell.imageView!.image = UIImage(named: movie.image)
        
        return cell

    }
}
