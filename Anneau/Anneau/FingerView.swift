//
//  FingerView.swift
//  Anneau
//
//  Created by Filipe Simões on 23/01/24.
//

import UIKit

class FingerView: UIView {

    var size: CGFloat = 19
    
    override func draw(_ rect: CGRect) {
        line(x:bounds.width/2, y:bounds.height, color: .darkGray)
        line(x: (bounds.width/2 + size), y: bounds.height, color: .black)
        line(x: (bounds.width/2 - size), y: bounds.height, color: .black)
        }
    
    func line(x: CGFloat, y: CGFloat, color: UIColor){
        let line = UIBezierPath()
        line.move(to: CGPoint(x: x, y: 0))
        line.addLine(to: CGPoint(x: x, y: y))
        color.setStroke()
        line.lineWidth = 3
        line.stroke()
    }
    
    
    func updateSize(_ newSize: CGFloat) {
            // Atualizar o tamanho e solicitar uma nova exibição
            size = newSize
            setNeedsDisplay()
        }
}
