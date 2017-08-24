//
//  PlayerViewController.swift
//  CourseView
//
//  Created by Sain-R Edwards Jr. on 8/24/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURL: URL! 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if videoURL != nil {
            youtubePlayerView.loadVideoURL(videoURL)
        } else {
            // CODE CHALLENGE: Show an alert view to tell the user there's an error!
        }
        
        youtubePlayerView.layer.cornerRadius = 4.0
        youtubePlayerView.layer.masksToBounds = true
        
    }
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
