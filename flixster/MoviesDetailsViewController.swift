//
//  MoviesDetailsViewController.swift
//  flixster
//
//  Created by Umar Khalid on 10/2/20.
//  Copyright © 2020 KhalidApps. All rights reserved.
//

import UIKit
import AlamofireImage

class MoviesDetailsViewController: UIViewController {

    @IBOutlet weak var backDropView: UIImageView! 
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var synopsisView: UILabel!
    
    
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleView.text = movie["title"] as? String
        titleView.sizeToFit()
        
        synopsisView.text = movie["overview"] as? String
        synopsisView.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        //Backdrop View
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backDropView.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
