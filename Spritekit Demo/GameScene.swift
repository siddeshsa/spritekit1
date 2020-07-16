//
//  GameScene.swift
//  Spritekit Demo
//
//  Created by mac on 16/07/20.
//  Copyright © 2020 mac. All rights reserved.
//

import SpriteKit
class GameScene: SKScene {
   
    let myFirstNode = SKNode()
    let mySpriteKitNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100.0, height: 100.0))
    
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        mySpriteKitNode.position = CGPoint(x: frame.midX, y: frame.midY)
        mySpriteKitNode.anchorPoint = CGPoint.zero
        mySpriteKitNode.addChild(myFirstTexturedSpriteNode)
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        blueBox.zPosition = 2
        blueBox.position = CGPoint(x: mySpriteKitNode.size.width/2, y: mySpriteKitNode.size.height/2)
        addChild(mySpriteKitNode)
        mySpriteKitNode.addChild(blueBox)
    }
}


