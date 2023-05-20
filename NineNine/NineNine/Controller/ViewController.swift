//
//  ViewController.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var GameListView: UIView!
    @IBOutlet weak var GameContentsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributedString = NSMutableAttributedString(string: titleLabel.text!)
        let strokeColor = UIColor(hex: "#ECB21C")

        attributedString.addAttribute(.strokeColor, value: strokeColor, range: NSMakeRange(0, attributedString.length))
        attributedString.addAttribute(.strokeWidth, value: -5.0, range: NSMakeRange(0, attributedString.length))
        
        titleLabel.attributedText = attributedString
        
        GameListView.layer.cornerRadius = 20
        GameListView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        GameContentsView.layer.cornerRadius = 20
        GameContentsView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]

    }


}

