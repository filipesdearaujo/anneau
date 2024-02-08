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
    
    @IBAction func helpTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "helpFinger", sender: self)
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
        valueMm.text = "\(calculatePointToMm.updateValorMM(key: sliderRing.value) ?? 18.14)mm" // Atualizar o texto de Milimetros da CircleView quando o valor do slider for alterado
    }
    
    func setupButton() {
        backButton.layer.cornerRadius = backButton.bounds.height/2
        backButton.layer.cornerRadius = backButton.bounds.height/2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "helpFinger" {
            let HelpVC = segue.destination as! HelpViewController
            HelpVC.warningTextLabel = "Certifique-se de alinhar cuidadosamente as bordas do seu dedo com as barras deslizantes e utilize a linha cinza central como guia. Não há distinção de tamanho entre dedos masculinos e femininos."
            HelpVC.warningImage = "FingerDemonstration"
        }
    }
}
