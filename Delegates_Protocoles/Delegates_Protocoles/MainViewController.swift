//
//  MainViewController.swift
//  Delegates_Protocoles
//
//  Created by Aya Fathy on 9/16/21.
//

import UIKit

class MainViewController: UIViewController{
  
    @IBOutlet weak var bublImageView: UIImageView!
    
    var lightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(goToSwichView))
        bublImageView.addGestureRecognizer(tap)
        bublImageView.isUserInteractionEnabled = true
        
    }
    
    
    
    @objc func goToSwichView() {
        let vc = storyboard?.instantiateViewController(identifier: "SwitchViewController") as! SwitchViewController
        vc.switchIsOn = lightOn
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal

        self.present(vc, animated: true, completion: nil)
    }

}

extension MainViewController: BublDelegate {
    
    func toggleBulb(stste: Bool) {
        lightOn = stste
        if stste{
            self.view.backgroundColor = .orange
            bublImageView.image = #imageLiteral(resourceName: "Electric-Bulb-Download-PNG-Image")
        }else{
            self.view.backgroundColor = .darkGray
            bublImageView.image = #imageLiteral(resourceName: "bulb_PNG1241")
        }
    }
    
    
    
}
