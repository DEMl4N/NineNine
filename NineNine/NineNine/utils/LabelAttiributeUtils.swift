//
//  labelAttiributeUtils.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

func addLabelStroke(targetLabel: UILabel!, strokeHexColor: String, strokeWidth: CGFloat) {
    
    guard let labelText: String = targetLabel?.text else {
        print("Target Label or Lable Text is Missing")
        return
    }

    let attributedString = NSMutableAttributedString(string: labelText)
    let strokeColor = UIColor(hex: strokeHexColor)

    attributedString.addAttribute(.strokeColor, value: strokeColor, range: NSMakeRange(0, attributedString.length))
    attributedString.addAttribute(.strokeWidth, value: -strokeWidth, range: NSMakeRange(0, attributedString.length))
    
    targetLabel?.attributedText = attributedString
}
