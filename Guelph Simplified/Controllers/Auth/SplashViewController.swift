//
//  SplashViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-20.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute:{
            self.launchApp()
        } )
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

    }
    
    func launchApp() {
        
        let vc = AppStoryboard.Main.viewController(viewControllerClass: LoginViewController.self)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}

