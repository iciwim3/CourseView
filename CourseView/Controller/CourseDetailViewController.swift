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
    }
    
    @IBAction func playButtonTapped(_ sender: Any) {
    }
    
    @IBAction func joinButtonTapped(_ sender: Any) {
    }
    
}
