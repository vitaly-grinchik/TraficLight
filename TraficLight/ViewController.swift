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
    
    private var activeLightIndex = 2                    // To start with Red light
    
    private var lightsStatus = [false, false, false]    // Init status of all lights - OFF
    
    private let lightOnAlpha: CGFloat = 1.0             // Brightness of light if ON
    
    private let lightOffAlpha: CGFloat = 0.2            // Brightness of light if OFF
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initial configuration of trafic light body and colors
        redView.layer.cornerRadius = redView.frame.width / 2
        redView.layer.borderWidth = 4
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        yellowView.layer.borderWidth = 4
        greenView.layer.cornerRadius = greenView.frame.width / 2
        greenView.layer.borderWidth = 4
        
        trafficLightBodyView.layer.cornerRadius = 20
        trafficLightBodyView.layer.borderWidth = 4
        trafficLightBodyView.layer.borderColor = UIColor.black.cgColor
        
        // Button configuration
        startButton.backgroundColor = .systemBlue
        startButton.setTitleColor(.white, for: .normal)
        startButton.layer.cornerRadius = 10
        startButton.contentEdgeInsets.left = 15
        startButton.contentEdgeInsets.right = 15
        
        updateLights()
    }

    // MARK: - IB Actions
    @IBAction func startButtonTaped() {
        lightsStatus = [false, false, false] // Reset to status all lights OFF
        startButton.setTitle("Next", for: .normal)
        activeLightIndex = activeLightIndex == 2 ? 0 : activeLightIndex + 1 // Find next light to turn ON
        lightsStatus[activeLightIndex] = true // Switch over to the next light
        
        updateLights()
    }
    
    func updateLights() {
        redView.alpha = lightsStatus[0] ? lightOnAlpha : lightOffAlpha
        yellowView.alpha = lightsStatus[1] ? lightOnAlpha : lightOffAlpha
        greenView.alpha = lightsStatus[2] ? lightOnAlpha : lightOffAlpha
    }
}

