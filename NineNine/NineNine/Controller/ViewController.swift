//
//  ViewController.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ContentTitleView: UIView!
    @IBOutlet weak var GameContentsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // LabelAttributeUtils.swift
        addLabelStroke(targetLabel: titleLabel, strokeHexColor: "#ECB21C", strokeWidth: 5.0)
        
        setContentsViewRoundShape(cornerRadius: 20)
    }
    
    func setContentsViewRoundShape(cornerRadius: CGFloat) {
        ContentTitleView.layer.cornerRadius = cornerRadius
        ContentTitleView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        GameContentsView.layer.cornerRadius = cornerRadius
        GameContentsView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }

}

