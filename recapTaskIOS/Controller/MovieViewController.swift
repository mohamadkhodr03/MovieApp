//
//  MovieViewController.swift
//  recapTaskIOS
//
//  Created by Mohamad khaled khodor on 14/10/2024.
//

import UIKit

class MovieViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    var movie: Movies?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let movie = movie {
            imageView.image = UIImage(named: movie.imageName)
            ratingLabel.text = "\(movie.rating)"
            titleLabel.text = movie.title
            dateLabel.text = "\(movie.release)"
        }
      
    }
    
    
}
