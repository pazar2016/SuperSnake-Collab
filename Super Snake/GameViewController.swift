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
    
    
    var snake = UIView()
    var timer = NSTimer()
    var xyMove = CGFloat(0)
    var xPos = CGFloat(0)
    var yPos = CGFloat(0)
    var direction = String("stop")
    
    
    override func viewDidLoad()
    {
       
        
        snake = UIView(frame: CGRectMake(view.center.x - 0, 400, 10, 30))
        snake.backgroundColor = UIColor.redColor()
        view.addSubview(snake)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: Selector("respondToSwipeGesture:"))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: Selector("respondToSwipeGesture:"))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: Selector("respondToSwipeGesture:"))
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: Selector("respondToSwipeGesture:"))
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
    }
    
    @IBAction func swiper(sender: UISwipeGestureRecognizer) {
        
        
    }
    
    
    
    
    
}