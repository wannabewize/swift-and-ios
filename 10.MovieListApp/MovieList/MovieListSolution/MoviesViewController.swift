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
        Movie(title: "Extraction", director: "Sam Hargrave", actor: "Chris Hemsworth, Bryon Lerum, Ryder Lerum", year: 2020, image: "Extraction", rating: 6.8),
        Movie(title: "The Gentlemen", director: "Guy Ritchie", actor: "Matthew McConaughey, Charlie Hunnam, Michelle Dockery", year: 2019, image: "TheGentlemen", rating: 7.9),
        Movie(title: "The Lodge", director: "Severin Fiala, Veronika Franz", actor: "Riley Keough, Jaeden Martell, Lia McHugh", year: 2019, image: "TheLodge", rating: 6.1),
        Movie(title: "Once Upon a Time in Hollywood", director: "Quentin Tarantino", actor: "Leonardo DiCaprio, Brad Pitt, Margot Robbie", year: 2019, image: "Hollywood", rating: 7.7),
        Movie(title: "The Willoughbys", director: "Kris Pearn, Cory Evans", actor: "Will Forte, Maya Rudolph, Alessia Cara", year: 2020, image: "Willoughby", rating: 6.4),
        Movie(title: "El hoyo", director: "Galder Gaztelu-Urrutia", actor: "Ivan Massagué, Zorion Eguileor, Antonia San Juan", year: 2019, image: "Elhoyo", rating: 7.0),
        Movie(title: "Gisaengchung", director: "Bong Joon Ho", actor: "Kang-ho Song, Sun-kyun Lee, Yeo-jeong Jo", year: 2019, image: "Gisaengchung", rating: 8.6),
        Movie(title: "Star Wars: Episode IX - The Rise of Skywalker", director: "J.J. Abrams", actor: "Daisy Ridley, John Boyega, Oscar Isaac", year: 2019, image: "Starwars", rating: 6.9),
        Movie(title: "Dangerous Lies", director: "Michael M. Scott", actor: "Nick Purcha, Joe Costa, Camila Mendes", year: 2020, image: "DangerousLies", rating: 5.2),
        Movie(title: "Knives Out", director: "Rian Johnson", actor: "Daniel Craig, Chris Evans, Ana de Armas", year: 2019, image: "KnivesOut", rating: 7.9),
        Movie(title: "Arkansas", director: "Clark Duke", actor: "Liam Hemsworth, Vince Vaughn, Clark Duke", year: 2020, image: "Arkansas", rating: 5.9),
        Movie(title: "Avengers: Endgame", director: "Anthony Russo, Joe Russo", actor: "Robert Downey Jr., Scarlett Johansson, Chris Evans", year: 2019, image: "AvengersEndgame", rating: 7.9)
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
