//
//  TabbarController.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-20.
//

import UIKit

class TabbarController: UITabBarController {
    @IBInspectable var initialIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = initialIndex

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
