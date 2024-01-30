//
//  HelpViewController.swift
//  Anneau
//
//  Created by Filipe Simões on 30/01/24.
//

import UIKit

class HelpViewController: UIViewController {
    
    @IBOutlet weak var warningView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var warningLabel: UILabel!
    override func viewDidLoad() {
        setup()
    }
    
    func setup() {
        warningView.layer.cornerRadius = 20
        }
}
