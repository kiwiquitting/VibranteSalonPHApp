//
//  ViewController_TeamOcto.swift
//  VibranteSalonPH
//
//  Created by dracaether on 02/10/2019.
//  Copyright © 2019 Team Octo. All rights reserved.
//

import UIKit

class ViewController_TeamOcto: UIViewController {
    
    // Outlets
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // revealViewController - Team Octo
        
        if (revealViewController() != nil) {
            
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController().revealToggle(_:))
            self.view.addGestureRecognizer((revealViewController()?.panGestureRecognizer())!)
        }
        
    }
    
    @IBAction func btngithub(_ sender: Any) {
        
        performSegue(withIdentifier: "seguegit", sender: self)
    }
    
    @IBAction func btnAdmin(_ sender: Any) {
        
        performSegue(withIdentifier: "segueLogin", sender: self)
        
    }
    
}
