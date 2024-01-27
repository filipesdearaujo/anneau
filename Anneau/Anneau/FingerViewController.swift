//
//  FingerViewController.swift
//  Anneau
//
//  Created by Filipe Simões on 22/01/24.
//

import UIKit

class FingerViewController: UIViewController {

    var calculatePointToMm = CalculatePointToMm()
    
    @IBOutlet weak var fingerView: FingerView!
    @IBOutlet weak var valueRing: UILabel!
    @IBOutlet weak var sliderRing: UISlider!
    @IBOutlet weak var valueMm: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        valueRing.text = "\(Int(round(100 * sender.value) / 100))"
        sliderValueChanged()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func sliderValueChanged() {
        fingerView.updateSize(calculatePointToMm.calcularValorParaChave(key:Int(sliderRing.value))) // Atualizar o raio da CircleView quando o valor do slider for alterado
        valueMm.text = "\(calculatePointToMm.updateValorMM(key: CGFloat(sliderRing.value)) ?? 18.14)mm" // Atualizar o texto de Milimetros da CircleView quando o valor do slider for alterado
    }
}
