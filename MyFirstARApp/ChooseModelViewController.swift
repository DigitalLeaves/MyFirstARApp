//
//  ChooseModelViewController.swift
//  MyFirstARApp
//
//  Created by Ignacio Nieto Carvajal on 02/08/2017.
//  Copyright © 2017 Digital Leaves. All rights reserved.
//

import UIKit

class ChooseModelViewController: UIViewController {
    // variables
    var modelToLoad = "mug.scn"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? ViewController {
            destinationViewController.modelToLoad = self.modelToLoad
        }
    }
    
    // MARK: - Choose model buttons.
    @IBAction func chooseSimple3dModel(_ sender: Any) {
        modelToLoad = "mug.scn"
        self.performSegue(withIdentifier: "showModel", sender: nil)
    }
    
    @IBAction func chooseGeometricFiguresModel(_ sender: Any) {
        modelToLoad = "geometricFigure.scn"
        self.performSegue(withIdentifier: "showModel", sender: nil)
    }
    
    @IBAction func chooseAnimatedModel(_ sender: Any) {
        modelToLoad = "spider.dae"
        self.performSegue(withIdentifier: "showModel", sender: nil)
    }
    
}
