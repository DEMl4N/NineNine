//
//  ViewController.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTitleView: UIView!
    @IBOutlet weak var gameContentsView: UIView!
    @IBOutlet weak var gameContentsTableView: UITableView!
    
    let gameData = GameData()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addLabelStroke(targetLabel: titleLabel, strokeHexColor: "#ECB21C", strokeWidth: 5.0) // LabelAttributeUtils.swift
        
        setContentsViewRoundShape(cornerRadius: 20)
        
        gameContentsTableView.delegate = self
        gameContentsTableView.dataSource = self
    }
    
    func setContentsViewRoundShape(cornerRadius: CGFloat) {
        contentTitleView.layer.cornerRadius = cornerRadius
        contentTitleView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        gameContentsView.layer.cornerRadius = cornerRadius
        gameContentsView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    
    /* ----- UITableViewDataSource 프로토콜 필수 구현 메소드 ------ */

    // Return the number of rows for the table.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    // Provide a cell object for each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = gameContentsTableView.dequeueReusableCell(withIdentifier: "gameContentCell", for: indexPath) as! GameContentsTableViewCell
        let gameTitleArray: [String] = gameData.gameTitleArray()
        let gameImageArray: [UIImage] = gameData.gameImageArray()
        
        cell.gameTitleLabel.text = gameTitleArray[indexPath.row]
        cell.gameImageView.image = gameImageArray[indexPath.row]
        
        return cell
    }
    /* ------------------------------------------------------ */
    
    
}

