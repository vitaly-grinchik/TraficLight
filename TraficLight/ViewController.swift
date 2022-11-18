//
//  ViewController.swift
//  TraficLight
//
//  Created by Виталий Гринчик on 18.11.22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var trafficLightBodyView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial configuration of trafic light body and colors
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        
        redView.alpha = 1
        yellowView.alpha = 0.4
        greenView.alpha = 0.4
        
        trafficLightBodyView.layer.cornerRadius = 20
        trafficLightBodyView.layer.borderWidth = 4
        trafficLightBodyView.layer.borderColor = UIColor.black.cgColor
        
        // Button configuration
        startButton.backgroundColor = .systemBlue
        startButton.setTitleColor(.white, for: .normal)
        startButton.layer.cornerRadius = 10
        startButton.contentEdgeInsets.left = 15
        startButton.contentEdgeInsets.right = 15
    }

    // MARK: - IB Actions
    @IBAction func startButtonTaped() {
    }
    
}

