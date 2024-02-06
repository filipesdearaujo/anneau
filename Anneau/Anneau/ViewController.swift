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
    @IBOutlet weak var controlView: UIView!
    @IBOutlet weak var botaoAjuda: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleView.updateRadius(16)
        sliderValueChanged()
        setupButton()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        valueRing.text = "\(Int(round(100 * sender.value) / 100))"
        sliderValueChanged()
    }

    @IBAction func modePressed(_ sender: UIButton) {  
        self.performSegue(withIdentifier: "screen", sender: self)
    }
    
    @IBAction func helpPressed(_ sender: Any) {
    }
    
    @objc func sliderValueChanged() {
        // Atualizar o raio da CircleView quando o valor do slider for alterado
        circleView.updateRadius(calculatePointToMm.calcularValorParaChave(key:Int(sliderRing.value)))
        valueMm.text = "\(calculatePointToMm.updateValorMM(key: sliderRing.value) ?? 18.14)mm"
    }
    
    func setupButton() {
        BotaoAnel.layer.cornerRadius = BotaoAnel.bounds.height/2
        botaoAjuda.layer.cornerRadius = botaoAjuda.bounds.height/2
        let maskPath = UIBezierPath(roundedRect: controlView.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 25, height: 25))
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        controlView.layer.mask = maskLayer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "helpRing" {
            let HelpVC = segue.destination as! HelpViewController
            HelpVC.warningTextLabel = "Alinhe a borda interna de seu anel com o circulo. Não há diferença entre tamanho de aneis masculinos e femininos."
        }
    }
}
