//
//  GameData.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

struct GameData {
    private let gameTitles: [String] = ["탭탭!", "쉐킷쉐킷!", "부비부비"]
    private var gameImages: [UIImage]
    
    init() {
        let images: [UIImage] = [#imageLiteral(resourceName: "tabtab"), #imageLiteral(resourceName: "Shake"), #imageLiteral(resourceName: "swipe")]
        let imageSize = CGSize(width: 40, height: 40)
        
        self.gameImages = images.map { image in resizeImage(image: image, targetSize: imageSize) }
    }
    
    func gameTitleArray() -> [String] {
        return gameTitles
    }
    
    func gameImageArray() -> [UIImage] {
        return gameImages
    }
}
