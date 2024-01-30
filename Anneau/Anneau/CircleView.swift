//
//  CircleView.swift
//  Anneau
//
//  Created by Filipe Simões on 16/01/24.
//


import UIKit

class CircleView: UIView {

    var radius: CGFloat = 19
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        circulo()
        }

    func circulo() {
        // Criando a cor desejada para o círculo (por exemplo, amarelo)
        let circleColor = UIColor.systemYellow
        circleColor.setStroke()

        // Criando o caminho do círculo
        let circle = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2),
                                  radius: radius,
                                  startAngle: 0,
                                  endAngle: 2 * CGFloat.pi,
                                  clockwise: true)

        // Configurando a largura do traço para o círculo
        circle.lineWidth = 3
        circle.stroke()

        // Criando a cor desejada para o círculo "rock" (por exemplo, azul)
        let rockColor = UIColor.systemTeal
        rockColor.setStroke()
        rockColor.setFill()

        let rock = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2 - radius - circle.lineWidth), radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)

        // Configurando a largura do traço para o círculo "rock"
        rock.lineWidth = 5
        rock.stroke()
        rock.fill()
    }



    func updateRadius(_ newRadius: CGFloat) {
            // Atualizar o raio e solicitar uma nova exibição
            radius = newRadius
            setNeedsDisplay()
        }
}
