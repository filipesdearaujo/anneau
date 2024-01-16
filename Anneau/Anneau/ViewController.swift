//
//  ViewController.swift
//  Anneau
//
//  Created by Filipe Simões on 16/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueRing: UILabel!
    @IBOutlet weak var sliderRing: UISlider!
    @IBOutlet weak var circleView: CircleView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderRing.value = Float(circleView.radius)
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let rounded = round(100 * sender.value) / 100
        let final = rounded * 100
        valueRing.text = "\(final)"
        sliderValueChanged()
    }
    
    @objc func sliderValueChanged() {
            // Atualizar o raio da CircleView quando o valor do slider for alterado
            let newRadius = CGFloat(sliderRing.value)
            circleView.updateRadius(100 * newRadius)
    }
}
