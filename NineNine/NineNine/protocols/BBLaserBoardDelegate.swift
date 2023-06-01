//
//  BBLaserBoardDelegate.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/06/01.
//

import Foundation

protocol BBLaserBoardDelegate: AnyObject {
    func didLaserDraw(laserPointCount: Int)
}

/* AnyObject 형으로 해주는 이유 => https://jusung.github.io/classOnlyProtocol/ */
