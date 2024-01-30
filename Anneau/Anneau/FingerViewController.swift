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
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        valueRing.text = "\(Int(round(100 * sender.value) / 100))"
        sliderValueChanged()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.isModalInPresentation = true
        sliderValueChanged()
        helpButton.layer.cornerRadius = helpButton.bounds.height/2
        setupButton()
    }

    @objc func sliderValueChanged() {
        fingerView.updateSize(calculatePointToMm.calcularValorParaChave(key:Int(sliderRing.value))) // Atualizar o raio da CircleView quando o valor do slider for alterado
        valueMm.text = "\(calculatePointToMm.updateValorMM(key: CGFloat(sliderRing.value)) ?? 18.14)mm" // Atualizar o texto de Milimetros da CircleView quando o valor do slider for alterado
    }
    
    func setupButton() {
        backButton.layer.cornerRadius = backButton.bounds.height/2
        backButton.layer.cornerRadius = backButton.bounds.height/2
    }
}
