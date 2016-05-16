//
//  GameViewController.swift
//  Super Snake
//
//  Created by pazar on 4/13/16.
//  Copyright © 2016 Patrick Azar. All rights reserved.
//

import UIKit

class GameViewController: UIViewController
{
    

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
        func respondToSwipeGesture(gesture: UIGestureRecognizer)
        {
            if let swipeGesture = gesture as? UISwipeGestureRecognizer
            {
                switch swipeGesture.direction
                {
                case UISwipeGestureRecognizerDirection.Right:
                    if currentDirection != "Left"
                    {
                        xMove = 12
                        yMove = 0
                        currentDirection = "Right"
                    }
                case UISwipeGestureRecognizerDirection.Down:
                    if currentDirection != "Up"
                    {
                        xMove = 0
                        yMove = 12
                    }
                case UISwipeGestureRecognizerDirection.Left:
                    if currentDirection != "Right"
                    {
                        xMove = -12
                        yMove = 0
                    }
                case UISwipeGestureRecognizerDirection.Up:
                    if currentDirection != "Down"
                    {
                        xMove = 0
                        yMove = -12
                    }
                default:
                    break
            }
        }
        
    }
    
    }}