//
//  GameContentsTableViewCell.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

class GameContentsTableViewCell: UITableViewCell {

    @IBOutlet weak var gameImageView: UIImageView!
    @IBOutlet weak var gameTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
