//
//  LoginViewController.swift
//  InstagramClone
//
//  Created by Akaanksha Sharman on 01/08/17.
//  Copyright © 2017 Akaanksha Sharman. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var gradientLayer = CAGradientLayer()
    
    @IBOutlet weak var baseVisualEffectVw: UIVisualEffectView!
    @IBOutlet weak var userNameVisualEffectVw: UIVisualEffectView!
    @IBOutlet weak var passwordVisualEffectVw: UIVisualEffectView!
    @IBOutlet weak var btnLogin: UIButton!
    
    
    private let SEGUE_DASHBOARD_IDENTIFIER = "showDashboardVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnLogin.layer.borderWidth = 2.0
        self.btnLogin.layer.borderColor = UIColor.white.withAlphaComponent(0.7).cgColor
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.createGradientLayer()

    }
    
    @IBAction func btnActionLogin(_ sender: Any) {
        self.performSegue(withIdentifier: SEGUE_DASHBOARD_IDENTIFIER, sender: nil)
    }
    
    @IBAction func btnActionSignUp(_ sender: Any) {
        
    }

    func createGradientLayer(){
        self.gradientLayer.frame = self.view.bounds
        self.gradientLayer.colors = [UIColor.magenta.withAlphaComponent(0.9).cgColor,UIColor.blue.withAlphaComponent(0.8).cgColor]
        self.baseVisualEffectVw.layer.insertSublayer(self.gradientLayer, at: 0)
    
    }

}
