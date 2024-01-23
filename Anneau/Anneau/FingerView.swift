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
        line()
        }
    
    
    
    
    
    
    
    
    func line(){
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 100, y: 0))
        line.addLine(to: CGPoint(x: 100, y: 400))
        line.lineWidth = 3
        line.stroke()
    }
    
    func updateSize(_ newSize: CGFloat) {
            // Atualizar o tamanho e solicitar uma nova exibição
            size = newSize
            setNeedsDisplay()
        }
}
