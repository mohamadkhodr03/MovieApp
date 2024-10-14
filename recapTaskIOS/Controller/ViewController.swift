//
//  ViewController.swift
//  recapTaskIOS
//
//  Created by Mohamad khaled khodor on 14/10/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    @IBOutlet weak var filmTableView: UITableView!
    
    var moviesArr : [Movies] = [
            Movies(title: "Joker", rating: 8.4, release: "2019", imageName: "joker"),
            Movies(title: "Speak No Evil", rating: 7.0, release: "2024", imageName: "speak_no_evil"),
            Movies(title: "The Penguin", rating: 8.8, release: "2024", imageName: "the_penguin"),
            Movies(title: "The Substance", rating: 7.9, release: "2024", imageName: "the_substance"),
            Movies(title: "Lee", rating: 7.0, release: "2023", imageName: "lee"),
            Movies(title: "Terrifier", rating: 8.0, release: "2024", imageName: "terrifier")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Top Movies"
        filmTableView.delegate = self
        filmTableView.dataSource = self
        let nib = UINib(nibName: "filmTableViewCell", bundle: nil)
        filmTableView.register(nib, forCellReuseIdentifier: "filmTableViewCell")
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmTableViewCell", for: indexPath) as! filmTableViewCell
        cell.setUp(movie: moviesArr[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "MovieViewController") as! MovieViewController
        let movie = moviesArr[indexPath.row]
        viewController.movie = movie
         
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
}

