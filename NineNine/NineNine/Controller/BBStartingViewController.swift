//
//  BBStartingViewController.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/29.
//

import UIKit

class BBStartingViewController: UIViewController {

    @IBOutlet weak var gameStartBtn: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        gameStartBtn.image = #imageLiteral(resourceName: "GameStartBtn2")
    }

    @IBAction func gameStartBtnPressed(_ sender: UIButton) {
        gameStartBtn.image = #imageLiteral(resourceName: "GameStartBtn")
    }

    @IBAction func moveBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func moveBBGameVIew(_ sender: UIButton) {
        guard let uvc = self.storyboard?.instantiateViewController(identifier: "BBGameVC") else {
                 return
             }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
}
