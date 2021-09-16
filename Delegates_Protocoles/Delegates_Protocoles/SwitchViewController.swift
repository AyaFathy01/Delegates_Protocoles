//
//  SwitchViewController.swift
//  Delegates_Protocoles
//
//  Created by Aya Fathy on 9/16/21.
//

import UIKit

protocol BublDelegate {
    func toggleBulb(stste: Bool)
}

class SwitchViewController: UIViewController {

    @IBOutlet weak var SwitchView: UISwitch!
    var switchIsOn: Bool!
    var delegate: BublDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SwitchView.setOn(switchIsOn, animated: true)
    }
    
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        delegate.toggleBulb(stste: sender.isOn)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
}


