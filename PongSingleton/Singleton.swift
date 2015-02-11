//
//  Singelton.swift
//  PongSingleton
//
//  Created by Lars Klingenberg on 11.02.15.
//  Copyright (c) 2015 Lars Klingenberg. All rights reserved.
//

import SpriteKit

class Singleton{
    
    let pong = SKSpriteNode(imageNamed: "Pong-ball")

    
    class var sharedManager: Singleton{
        
        struct Static{
            static var instance: Singleton?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token){
            Static.instance = Singleton()
        }
        
        return Static.instance!
    }
}