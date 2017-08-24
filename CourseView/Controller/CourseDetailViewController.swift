//
//  CourseDetailViewController.swift
//  CourseView
//
//  Created by Sain-R Edwards Jr. on 8/23/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {

    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    @IBOutlet weak var courseFeatureImageView: UIImageView!
    
    var course: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseFeatureImageView.image = course.featureImage
        courseTitleLabel.text = course.title
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
        courseDescriptionTextView.text = course.description
        
        self.navigationItem.title = course.instructor
        
        // Configure join button
        joinCourseButton.layer.cornerRadius = 3.0
        joinCourseButton.layer.masksToBounds = true
    }
    
    @IBAction func playButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func joinButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Congratulation!", message: "You just enrolled in \(course.title) successfully!", preferredStyle: UIAlertControllerStyle.alert)
        
        let actionButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(actionButton)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    struct Storyboard {
        static let playVideoSegue = "PlayVideoSegue"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.playVideoSegue {
            if let playerViewController = segue.destination as? PlayerViewController {
                playerViewController.videoURL = course.introductionVideoURL
            }
        }
    }
    
}
