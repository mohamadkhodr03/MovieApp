//
//  filmTableViewCell.swift
//  recapTaskIOS
//
//  Created by Mohamad khaled khodor on 14/10/2024.
//

import UIKit

class filmTableViewCell: UITableViewCell {
    @IBOutlet weak var filmCellImageView: UIImageView!
    @IBOutlet weak var filmCellTitle: UILabel!
    @IBOutlet weak var filmCellRating: UILabel!
    @IBOutlet weak var filmCellRelease: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setUp(movie: Movies) {
        filmCellImageView.image = UIImage(named: movie.imageName)
        filmCellTitle.text = movie.title
        filmCellRating.text = "\(movie.rating)"
        filmCellRelease.text = movie.release
    }
}
