//
//  LoginViewController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-20.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerBtnActn(_ sender: UIButton) {
        let vc  = AppStoryboard.Main.viewController(viewControllerClass: RegisterViewController.self)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func startHomeBtnActn(_ sender: UIButton) {
        let vc  = AppStoryboard.Main.viewController(viewControllerClass: SimpleTabbarController.self)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
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
