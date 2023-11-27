//
//  ViewController.swift
//  chooseONE
//
//  Created by Mirelle Alessandre on 17/11/23.
//

import UIKit
protocol SelectingHiddenTextDelegate {
    func select(_ button: UIButton)
}

class ViewController: UIViewController {
    
    var proximaVC: InternViewController!
    var delegate: SelectingHiddenTextDelegate?
    
    @IBOutlet weak var blueAnswer: UIButton!
    
    @IBOutlet weak var blackAnswer: UIButton!
    
    @IBAction func blueAnswerPressed(_ sender: Any) {
        goToNextVC()
        delegate?.select(blueAnswer)
    }
    
    @IBAction func blackAnswerPressed(_ sender: Any) {
        goToNextVC()
        delegate?.select(blackAnswer)
    }
    
    func goToNextVC() {
        present(proximaVC, animated: true)
    }
    
    func updateButton() {
        blueAnswer.backgroundColor = .blue
        blueAnswer.layer.cornerRadius = 12
        blackAnswer.backgroundColor = .black
        blackAnswer.layer.cornerRadius = 12
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButton()
        guard let proximaVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "storyID") as? InternViewController else {return}
        delegate = proximaVC
        self.proximaVC = proximaVC

    }

}

