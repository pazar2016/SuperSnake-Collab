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
       
        func blockRandom()
        {
            if creationArray.count == 0
            {
                print ("Game Over")
            }
            else
            {
                spawnedBlocks.append(createBlock(creationArray.removeAtIndex(Int(arc4random_uniform(12)) % (creationArray.count)).y: creationArray.removeAtIndex(Int(arc4random_uniform(12)) % (creationArray.count)), round: true))
            }
        }
        
        func createBlock (x: Int, y: Int, round: DarwinBoolean) -> UIView
        {
            let rBlock = UIView(frame: CGRectMake((CGFloat)(x), (CGFloat)(y), 12, 12))
            if round
            {
                rBlock.layer.cornerRadius = 6
            }
            rBlock.backgroundColor = UIColor.whiteColor()
            innerView.addSubview(rBlock)
            return rBlock
        }
        
        func resetGame()
        {
            xMove = 0
            yMove = 0
            xPos = 124
            yPos = 124
            timer.invalidate()
            innerView.removeFromSuperview()
            
            for snakeBlock in snake
            {
                snakeBlock.removeFromSuperview()
            }
            snake.removeAll()
            
            pointCounter.text = "0"
            timerFunction()
            
            innerView = UIView!(frame: CGRectMake((view.frame.width - 258)/2, 95, 252, 252))
            //innerView.backgroundcolor = UIColor.blackColor()
            view.addSubview(innerView)
            
            xPos = 144
            yPos = 144
            
            snake.append(createBlock(Int(xPos), y: Int(yPos), round: false))
            
            for var y = 0; y < 4; y++
            {
                for var x = 12; x < 252; x += 12
                {
                    creationArray.append(x)
                }
            }
            blockRandom()
            
            for direction in directions
            {
                let swipe = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
                swipe.direction = direction
                self.view.addGestureRecognizer(swipe)
            }
        }
        
        func gameOver()
    }
    
    }}