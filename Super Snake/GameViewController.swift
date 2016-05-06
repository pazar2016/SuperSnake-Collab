//
//  GameViewController.swift
//  Super Snake
//
//  Created by pazar on 4/13/16.
//  Copyright © 2016 Patrick Azar. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UICollisionBehaviorDelegate
{
    var snake = UIView()

    override func viewDidLoad()
    {
       
        
        snake = UIView(frame: CGRectMake(view.center.x - 0, 400, 10, 30))
        snake.backgroundColor = UIColor.redColor()
        view.addSubview(snake)
        
        
        super.viewDidLoad()

    }

   

    
}
