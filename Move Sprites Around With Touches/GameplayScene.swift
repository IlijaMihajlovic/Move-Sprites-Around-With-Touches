//
//  GameplayScene.swift
//  Move Sprites Around With Touches
//
//  Created by Ilija Mihajlovic on 9/18/17.
//  Copyright © 2017 Ilija Mihajlovic. All rights reserved.
//

import SpriteKit

class GameplayScene: SKScene {
    
    var mySpriteNode = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        mySpriteNode = SKSpriteNode(color: SKColor.orange, size: CGSize(width: 120, height: 120))
        mySpriteNode.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        mySpriteNode.position = CGPoint(x: 0, y: 0)
        
        //Add node to the scene
        self.addChild(mySpriteNode)
        
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            //Get the location of the node where the touch is
            let touchLocation = touch.location(in: self)
            
            //Assign the current X postition of the touch to the X position of the node
            mySpriteNode.position.x = touchLocation.x
            
            //Assign the current Y postition of the touch to the Y position of the node
            mySpriteNode.position.y = touchLocation.y
            
        }
    }
}
