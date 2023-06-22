//
//  BBGameViewController.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/06/01.
//

import UIKit

class BBGameViewController: UIViewController, BBLaserBoardDelegate {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var laserBoardView: BBLaserBoardView!
    var scoreNum: Int = 0
    let catImageArray: [UIImage] = [#imageLiteral(resourceName: "left"), #imageLiteral(resourceName: "right")]
    var flag: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        laserBoardView.delegate = self
        score.text = "0"
    }
    
    func didLaserDraw(laserPointCount: Int) {
        score.text = "\(laserPointCount / 6)"
        flag = flag == 0 ? 1 : 0
        catImage.image = catImageArray[flag]
    }
}
