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
    var selectedCourse: Course!
    
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
        let chefCourse = self.courses[0]
        selectedCourse = chefCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    @IBAction func popStarCourseButtonTapped(_ sender: UIButton) {
        let popStarCourse = self.courses[1]
        selectedCourse = popStarCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    @IBAction func developerCourseButtonTapped(_ sender: UIButton) {
        let developerCourse = self.courses[2]
        selectedCourse = developerCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    
    struct Storyboard {
        static let showCourseDetail = "ShowCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showCourseDetail {
            if let courseDetailVC = segue.destination as? CourseDetailViewController {
                courseDetailVC.course = self.selectedCourse
            }
        }
    }
}
