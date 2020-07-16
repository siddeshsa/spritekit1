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
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        mySpriteKitNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(mySpriteKitNode)
    }
}
