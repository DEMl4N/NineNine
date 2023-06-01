//
//  BBLaserBoardView.swift
//  NineNine
//
//  Created by Jinyoung Yoo on 2023/06/01.
//

import UIKit

class BBLaserBoardView: UIView {
    var cnt: Int = 0
    private var lines: [LaserLine] = []
    private var strokeWidth: CGFloat = 8.0
    private var strokeColor: UIColor = .red
    private var laserPointCount: Int = 0
    weak var delegate: BBLaserBoardDelegate?
    
    // MARK: - Drawing methods
    override func draw(_ rect: CGRect) {
        let size: CGSize = CGSize(width: 2.0, height: 2.0)

        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        lines.forEach { line in
            context.setAlpha(1.0)
            context.setStrokeColor(line.strokeColor.cgColor)
            context.setLineWidth(line.strokeWidth)
            context.setLineCap(.round)
            context.setShadow(offset: size, blur: 2.0, color: UIColor.white.cgColor)
            
            for point in line.points {
                context.move(to: point)
                context.addLine(to: point)
            }
            context.strokePath()
        }
        self.laserPointCount += 1
        delegate?.didLaserDraw(laserPointCount: self.laserPointCount)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        
        let newLine = LaserLine(points: [point], strokeColor: strokeColor, strokeWidth: strokeWidth, laserPointCount: 0)
        lines.append(newLine)
        setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        guard var lastLine = lines.popLast() else { return }

        lastLine.points.append(point)
        lines.append(lastLine)
        setNeedsDisplay()
    }
}

