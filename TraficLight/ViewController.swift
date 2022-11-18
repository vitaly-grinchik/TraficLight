//
//  ViewController.swift
//  TraficLight
//
//  Created by Виталий Гринчик on 18.11.22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        
        redView.alpha = 0.4
        yellowView.alpha = 0.4
        greenView.alpha = 0.4
    }

    // MARK: - IB Actions
    @IBAction func startButtonTaped() {
    }
    
}

