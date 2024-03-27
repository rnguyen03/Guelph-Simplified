//
//  RegisterViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-20.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToLoginBtnActn(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func startHomeBtnActn(_ sender: UIButton) {
        let vc  = AppStoryboard.Main.viewController(viewControllerClass: SimpleTabbarController.self)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }

}
