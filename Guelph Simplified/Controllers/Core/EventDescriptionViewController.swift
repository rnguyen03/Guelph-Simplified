//
//  EventDescriptionViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-23.
//

import UIKit
import CoreLocation

class EventDescriptionViewController: UIViewController {
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var pinImageView: UIImageView!
    @IBOutlet weak var eventLabel: UILabel!
    
    let universityOfGuelphCoordinate = CLLocationCoordinate2D(latitude: 43.5328, longitude: -80.2255) // Coordinates for the University of Guelph
    
    var eventName: String?
    var eventImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (eventName != nil) {
            self.title = eventName
            eventLabel.text = eventName
        }
        
        if (eventImage != nil) {
            eventImageView.image = eventImage
        }
        
        // Create a UITapGestureRecognizer
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        // Attach it to the UIImageView
        eventImageView.addGestureRecognizer(tapGestureRecognizer)
        pinImageView.addGestureRecognizer(tapGestureRecognizer)
    }
    

    @objc func imageTapped() {
        // Assuming that index 1 is the target tab where you want to navigate
        let targetTabIndex = 0

        // Access the tabBarController and change its selected index
        if let tabBarController = self.tabBarController {
            tabBarController.selectedIndex = targetTabIndex
            
            // If you also need to pass data to the view controller at the target tab, do it here
            if let navController = tabBarController.viewControllers?[targetTabIndex] as? UINavigationController,
               let targetViewController = navController.topViewController as? MapViewController {
                // Pass data to targetViewController
                targetViewController.navigateToAnnotation(name: eventName ?? "Event", coordinate: universityOfGuelphCoordinate)
            }
        }
    }

}
