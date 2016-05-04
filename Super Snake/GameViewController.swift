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
    {        super.viewDidLoad()

        func timerFunction()
        {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "DirectionIfElse", userInfo: nil, repeats: true)
        }
        snake = UIView(frame: CGRectMake(view.center.x - 0, 400, 10, 30))
        snake.backgroundColor = UIColor.redColor()
        view.addSubview(snake)
        
        
        
var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)

        
        
    }
    @IBAction func respondToSwipeGesture(sender: AnyObject)
    {
            if var swipeGesture = swipeGestureRecognizer as? UISwipeGestureRecognizer
            {
                switch swipeGesture.direction {
                case UISwipeGestureRecognizerDirection.Right:
                    print("Swiped right")
                    direction = "right"
                case UISwipeGestureRecognizerDirection.Down:
                    print("Swiped down")
                    direction = "down"
                case UISwipeGestureRecognizerDirection.Up:
                    print("Swiped Up")
                    direction = "Up"
                case UISwipeGestureRecognizerDirection.Left:
                    print("Swiped Left")
                    direction = "Left"
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
            else if direction == "left"
            {
                xyMove = CGFloat(xPos - 10)
                xPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xyMove, yPos)
            }
            else if direction == "up"
            {
                xyMove = CGFloat(yPos - 10)
                yPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xPos, xyMove)
            }
            else if direction == "down"
            {
                xyMove = CGFloat(yPos + 10)
                yPos = xyMove
                self.snake.transform = CGAffineTransformMakeTranslation(xPos, yPos)
            }
            else if direction == "stop"
            {
                self.snake.transform = CGAffineTransformMakeTranslation(xPos, yPos)
            }
            }
        }

    }

   

    

