//
//  CoursesViewController.swift
//  CourseView
//
//  Created by Sain-R Edwards Jr. on 8/22/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class CoursesViewController: UIViewController {
    
    @IBOutlet weak var chefCourseProps: UIButton!
    @IBOutlet weak var popStarCourseProps: UIButton!
    @IBOutlet weak var developerCourseProps: UIButton!
    
    var courses: [Course] = CourseStore.downloadNewCourses()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }
    func updateUI() {
        let chefCourse = courses[0]
        chefCourseProps.setImage(chefCourse.buttonImage, for: [])
        
        let popStarCourse = courses[1]
        popStarCourseProps.setImage(popStarCourse.buttonImage, for: [])
        
        let developerCourse = courses[2]
        developerCourseProps.setImage(developerCourse.buttonImage, for: [])
    }
    

    @IBAction func chefCourseButtonTapped(_ sender: UIButton) {
    }
    @IBAction func popStarCourseButtonTapped(_ sender: UIButton) {
    }
    @IBAction func developerCourseButtonTapped(_ sender: UIButton) {
    }
    
}
