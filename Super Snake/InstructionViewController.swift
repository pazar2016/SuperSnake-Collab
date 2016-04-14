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
    @IBOutlet weak var MoveImageViewTwo: UIImageView!
    @IBOutlet weak var CollectImageViewOne: UIImageView!
    @IBOutlet weak var CollectImageViewTwo: UIImageView!
    @IBOutlet weak var CollectImageViewThree: UIImageView!
    @IBOutlet weak var AvoidImageViewOne: UIImageView!
    @IBOutlet weak var AvoidImageViewTwo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
