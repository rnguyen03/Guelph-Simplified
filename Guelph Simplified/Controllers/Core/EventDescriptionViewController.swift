//
//  EventDescriptionViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-23.
//

import UIKit

class EventDescriptionViewController: UIViewController {
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventLabel: UILabel!
    
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
