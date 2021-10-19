//
//  AppDelegate.swift
//  Nimble Ninja Demo
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the view
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        // Create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        // Present the scenee
        skView.presentScene(scene)
    }

     func shouldAutorotate() -> Bool {
        return true
    }

     func supportedInterfaceOrientations() -> Int {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return Int(UIInterfaceOrientationMask.allButUpsideDown.rawValue)
        } else {
            return Int(UIInterfaceOrientationMask.all.rawValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

     func prefersStatusBarHidden() -> Bool {
        return true
    }
}