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
    @IBOutlet var swipeGestureRecognizer: UISwipeGestureRecognizer!
    

    var timer = NSTimer()
   var innerView = UIView()
    
    var xMove = CGFloat(0)
    var yMove = CGFloat(12)
    var xPos = CGFloat(0)
    var yPos = CGFloat(0)
    var add = 0
    var currentDirection = "Down"
    let directions = [UISwipeGestureRecognizerDirection.Right, UISwipeGestureRecognizerDirection.Left, UISwipeGestureRecognizerDirection.Up, UISwipeGestureRecognizerDirection.Down]
    var spawnedBlocks : [UIView] = []
    var creationArray : [Int] = []
    var snake : [UIView] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        innerView = UIView(frame: CGRectMake((view.frame.width - 257)/2, 95, 252, 252))
        view.addSubview(innerView)
        
        xPos = 144
        yPos = 144

        for y in 0 ..< 2
        {
            for var x = 12; x < 252; x += 12
            {
creationArray.append(x)
            }
        }
        
        for direction in directions
        {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:
                )))
            swipe.direction = direction
        self.view.addSwipeGestureRecognizer(swipe)
        }
       
    }
    
}