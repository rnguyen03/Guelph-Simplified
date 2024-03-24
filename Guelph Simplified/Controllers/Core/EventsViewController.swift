//
//  EventsViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-21.
//

import UIKit

class EventsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var searchField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegates()

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
    
    private func setupDelegates() {
        searchField.delegate = self
    }
    

    @IBAction func viewEventAction(_ sender: UIButton) {
        let vc = AppStoryboard.Main.viewController(viewControllerClass: EventDescriptionViewController.self)
        vc.eventName = sender.titleLabel?.text
        vc.eventImage = sender.configuration?.background.image
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // This dismisses the keyboard.
        return true
    }

}
