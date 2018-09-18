//
//  ViewController.swift
//  Move Sprites Around With Touches
//
//  Created by Ilija Mihajlovic on 9/18/17.
//  Copyright © 2017 Ilija Mihajlovic. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    let skView: SKView = {
        let view = SKView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(skView)
       
        //Setting up constraints
        NSLayoutConstraint.activate([skView.topAnchor.constraint(equalTo: view.topAnchor),
        skView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        skView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        skView.leadingAnchor.constraint(equalTo: view.leadingAnchor)])
    
       
        let scene = GameplayScene(size: CGSize(width: ScreenSize.width, height: ScreenSize.heigth))
        scene.scaleMode = .resizeFill
        
        skView.ignoresSiblingOrder = true
        skView.presentScene(scene)
        
    }

  

}

