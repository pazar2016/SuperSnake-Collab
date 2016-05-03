//
//  InstructionViewController.swift
//  Super Snake
//
//  Created by pazar on 4/13/16.
//  Copyright © 2016 Patrick Azar. All rights reserved.
//

import UIKit

class InstructionViewController: UIViewController {
    @IBOutlet weak var MoveImageViewOne: UIImageView!
    @IBOutlet weak var CollectImageViewOne: UIImageView!
    @IBOutlet weak var CollectImageViewTwo: UIImageView!
    @IBOutlet weak var AvoidImageViewOne: UIImageView!
    @IBOutlet weak var AvoidImageViewTwo: UIImageView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        MoveImageViewOne.image = UIImage(named: "gesture")
        CollectImageViewOne.image = UIImage(named: "coin")
        CollectImageViewTwo.image = UIImage(named: "pellet")
        AvoidImageViewOne.image = UIImage(named: "bomb")
        AvoidImageViewTwo.image = UIImage(named: "poison")
    }

}
