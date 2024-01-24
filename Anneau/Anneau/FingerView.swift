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
        // Drawing code
       // fixedline()
        line(x:bounds.width/2, y:bounds.height)
        line(x: (bounds.width/2 - size), y: bounds.height)
        line(x: (bounds.width/2 + size), y: bounds.height)
        }
    
    func line(x: CGFloat, y: CGFloat){
        let line = UIBezierPath()
        line.move(to: CGPoint(x: x, y: 0))
        line.addLine(to: CGPoint(x: x, y: y))
        line.lineWidth = 2
        line.stroke()
    }
    
    
    func updateSize(_ newSize: CGFloat) {
            // Atualizar o tamanho e solicitar uma nova exibição
            size = newSize
            setNeedsDisplay()
        }
}
