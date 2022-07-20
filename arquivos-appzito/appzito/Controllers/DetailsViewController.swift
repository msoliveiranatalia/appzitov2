//
//  DetailsViewController.swift
//  appzito
//
//  Created by nmso on 19/07/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var backdropImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var genres: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        guard let movie = movie else {
            return
        }
        let movieGenres = movie.genres?.joined(separator: ", ")
        
        self.title = movie.title
        self.backdropImage.image = UIImage(named: movie.backdropPath)
        titleLabel.text = movie.title
        posterImage.image = UIImage (named: movie.posterPath)
        ratingLabel.text = "Rating: \(movie.voteAverage)/10"
        genres.text = movieGenres
        overviewLabel.text = movie.overview
        
    }
    

   

}
