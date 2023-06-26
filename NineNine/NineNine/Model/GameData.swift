//
//  GameData.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/05/21.
//

import UIKit

struct GameData {
    private let gameTitles: [String] = ["탭탭!", "쉐킷쉐킷!", "부비부비"]
    private var gameImages: [UIImage] = [#imageLiteral(resourceName: "tabtab"), #imageLiteral(resourceName: "Shake"), #imageLiteral(resourceName: "swipe")]
    private var swipingCatImages:[UIImage] = [#imageLiteral(resourceName: "left"), #imageLiteral(resourceName: "right")]
    private var fishImage: UIImage = #imageLiteral(resourceName: "fish_icon")
    
    func gameTitleArray() -> [String] {
        return gameTitles
    }
    
    func gameImageArray() -> [UIImage] {
        return gameImages
    }
    
    func swipingCatImageArray() -> [UIImage] {
        return swipingCatImages
    }
    
    func fishThumbImage() -> UIImage {
        return fishImage
    }
}
