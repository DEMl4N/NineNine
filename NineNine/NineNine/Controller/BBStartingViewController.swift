//
//  BBStartingViewController.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/29.
//

import UIKit

class BBStartingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
