//
//  GameScene.swift
//  Spritekit Demo
//
//  Created by mac on 16/07/20.
//  Copyright © 2020 mac. All rights reserved.
//

import SpriteKit
class GameScene: SKScene {
   
       let dogSpriteNode = SKSpriteNode(imageNamed: "Run0")
    var dogFrames = [SKTexture]()
    
    override func didMove(to view: SKView) {
        dogSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(dogSpriteNode)
        
        let textureAtlas = SKTextureAtlas(named: "Dog Frames")
        for index in 0..<textureAtlas.textureNames.count{
            let textureName = "Run" + String(index)
            dogFrames.append(textureAtlas.textureNamed(textureName))
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !dogSpriteNode.hasActions(){
        dogSpriteNode.run(SKAction.repeatForever(SKAction.animate(with: dogFrames, timePerFrame: 0.1)))
        }else{
            dogSpriteNode.removeAllActions()
        }
        
    }
}

