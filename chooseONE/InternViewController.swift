//
//  ViewControllerDelegate.swift
//  chooseONE
//
//  Created by Mirelle Alessandre on 17/11/23.
//

import UIKit


class InternViewController: UIViewController {
        
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var returnButton: UIButton!
    
    @IBAction func returnButtonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButton()
    }
    
    func updateButton() {
        returnButton.layer.cornerRadius = 12
    }
}

extension InternViewController: SelectingHiddenTextDelegate {
    func select(_ button: UIButton) {
        answerLabel.textColor = button.backgroundColor
        answerLabel.shadowColor = .yellow
    }
}

