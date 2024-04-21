//
//  ViewController.swift
//  Actividad 9
//
//  Created by Diego Quintanilla  on 20/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var didFinishLabel: UILabel!
    @IBOutlet weak var configurationLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var becomeActiveLabel: UILabel!
    @IBOutlet weak var resignActiveLabel: UILabel!
    @IBOutlet weak var enterForegroundLabel: UILabel!
    @IBOutlet weak var enterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var becomeActiveCount = 0
    var resignActiveCount = 0
    var enterForegroundCount = 0
    var enterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        didFinishLabel.text = "The App had launched \(appDelegate.launchCount) time(s)"
        configurationLabel.text = "The App had created the scene \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectLabel.text = "The App had connected \(willConnectCount) time(s)"
        becomeActiveLabel.text = "The App had become active \(becomeActiveCount) time(s)"
        resignActiveLabel.text = "The App had resigned active \(resignActiveCount) time(s)"
        enterForegroundLabel.text = "The App had entered foreground \(enterForegroundCount) time(s)"
        enterBackgroundLabel.text = "The App had entered background \(enterBackgroundCount) time(s)"
    }
}

