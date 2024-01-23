//
//  FingerViewController.swift
//  Anneau
//
//  Created by Filipe Simões on 22/01/24.
//

import UIKit

class FingerViewController: UIViewController {

    @IBOutlet weak var fingerView: FingerView!
    @IBOutlet weak var valueRing: UILabel!
    @IBOutlet weak var sliderRing: UISlider!
    @IBOutlet weak var valueMm: UILabel!
    
    let ringSize: [Int: CGFloat] = [
        1: 12.45,
        2: 13.26,
        3: 13.67,
        4: 14.07,
        5: 14.27,
        6: 14.68,
        7: 14.88,
        8: 15.29,
        9: 15.70,
        10: 16.10,
        11: 16.51,
        12: 16.71,
        13: 16.92,
        14: 17.32,
        15: 17.73,
        16: 18.14,
        17: 18.54,
        18: 18.95,
        19: 19.35,
        20: 19.76,
        21: 19.96,
        22: 20.17,
        23: 20.57,
        24: 20.98,
        25: 21.39,
        26: 21.79,
        27: 22.20
    ]
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        valueRing.text = "\(Int(round(100 * sender.value) / 100))"
        sliderValueChanged()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func sliderValueChanged() {
        // Atualizar o raio da CircleView quando o valor do slider for alterado
        let milimeters = calcularValorParaChave(key:CGFloat(sliderRing.value), dicionario: ringSize)
        fingerView.updateSize(milimeters!)
        let valueMM = updateValorMM(key: CGFloat(sliderRing.value), dicionario: ringSize)
        valueMm.text = "\(valueMM ?? 18.14)mm"
    }
    
    func calcularValorParaChave(key: CGFloat, dicionario: [Int:CGFloat]) -> CGFloat? {
                if let valor = ringSize[Int(key)] {
            let resultado = 72.0 * valor / 25.4
            return CGFloat(resultado)
        } else {
            return nil  // Retorna nil se a chave não existir em ringSize
        }
    }
    
    func updateValorMM(key: CGFloat, dicionario: [Int:CGFloat]) -> CGFloat? {
                if let valor = ringSize[Int(key)] {
            return CGFloat(valor)
        } else {
            return nil  // Retorna nil se a chave não existir em ringSize
        }
    }

}