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
        
        
        
let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(GameViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(GameViewController.respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(GameViewController.respondToSwipeGesture(_:)))
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(GameViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)

        
        
    }
    @IBAction func respondToSwipeGesture(sender: AnyObject)
    {
            if let swipeGesture = swipeGestureRecognizer as? UISwipeGestureRecognizer
            {
                switch swipeGesture.direction {
                case UISwipeGestureRecognizerDirection.Left:
                    print("Swiped left")
                    direction = "left"
                case UISwipeGestureRecognizerDirection.Down:
                    print("Swiped down")
                    direction = "down"
                case UISwipeGestureRecognizerDirection.Up:
                    print("Swiped Up")
                    direction = "Up"
                case UISwipeGestureRecognizerDirection.Right:
                    print("Swiped Right")
                    direction = "Right"
                default:
                    break
                    
                }
            }
        
        func directionIfElse(){
            if direction == "right"
            {
                xyMove = CGFloat(xPos + 10)
                xPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xyMove, yPos)
            }
            if direction == "left"
            {
                xyMove = CGFloat(xPos - 10)
                xPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xyMove, yPos)
            }
            if direction == "up"
            {
                xyMove = CGFloat(yPos - 10)
                yPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xPos, xyMove)
            }
            if direction == "down"
            {
                xyMove = CGFloat(yPos + 10)
                yPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xPos, yPos)
            }
            if direction == "stop"
            {
                self.snake.transform = CGAffineTransformMakeTranslation(xPos, yPos)
            }
            }
        }

    }

   

    

