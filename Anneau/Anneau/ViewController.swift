//
//  ViewController.swift
//  Anneau
//
//  Created by Filipe Simões on 16/01/24.
//

import UIKit

class ViewController: UIViewController {

    var calculatePointToMm = CalculatePointToMm()
    
    @IBOutlet weak var valueRing: UILabel!
    @IBOutlet weak var sliderRing: UISlider!
    @IBOutlet weak var circleView: CircleView!
    @IBOutlet weak var valueMm: UILabel!
    @IBOutlet weak var BotaoAnel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleView.updateRadius(16)
        sliderValueChanged()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        valueRing.text = "\(Int(round(100 * sender.value) / 100))"
        sliderValueChanged()
    }

    @IBAction func modePressed(_ sender: UIButton) {  
        self.performSegue(withIdentifier: "screen", sender: self)
    }
    

    @objc func sliderValueChanged() {
        // Atualizar o raio da CircleView quando o valor do slider for alterado
        circleView.updateRadius(calculatePointToMm.calcularValorParaChave(key:CGFloat(sliderRing.value))!)
        valueMm.text = "\(calculatePointToMm.updateValorMM(key: CGFloat(sliderRing.value)) ?? 18.14)mm"
    }

}
