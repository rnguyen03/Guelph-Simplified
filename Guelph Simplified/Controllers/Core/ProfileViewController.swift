//
//  ProfileViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-21.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var friendBtn: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mutualView: UIView!
    
    var profileName: String?
    var otherProfile: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        if (otherProfile != nil) {
            mutualView.isHidden = false
            friendBtn.isHidden = false
        }
        
        if (profileName != nil) {
            self.title = profileName
            nameLabel.text = profileName
        }
        self.navigationController?.navigationBar.tintColor = UIColor.systemIndigo
        
        // Change the font of the navigation bar's title
        let attributes = [NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 20)!]
        self.navigationController?.navigationBar.titleTextAttributes = attributes

        // If you want to change the font of the back button specifically
        let backAttributes = [NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 20)!,
                              NSAttributedString.Key.foregroundColor: UIColor.systemIndigo]
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem?.setTitleTextAttributes(backAttributes, for: .normal)
    }
    
    @IBAction func viewProfileAction(_ sender: UIButton) {
        let namesPool = ["Alice Smith", "Bob Johnson", "Charlie Brown", "David Wilson", "Eva Martinez",
                         "Fiona Clark", "George Miller", "Hannah Davis", "Ivan Rodriguez", "Julia Martinez",
                         "Kevin Garcia", "Liam Walker", "Mia Hall", "Noah Allen", "Olivia Young",
                         "Pablo Hernandez", "Quinn Lee", "Rachel King", "Steve Adams", "Tina Baker"]

        let randomIndex = Int(arc4random_uniform(UInt32(namesPool.count)))
        let randomName = namesPool[randomIndex]

        let vc = AppStoryboard.Main.viewController(viewControllerClass: ProfileViewController.self)
        vc.otherProfile = true
        vc.profileName = randomName // Use the random name here
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }

}
