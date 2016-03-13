//
//  ViewController.swift
//  TicTacToe
//
//  Created by King Justin on 3/9/16.
//  Copyright © 2016 justinleesf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    @IBOutlet weak var firstScoreLabel: UILabel!
    @IBOutlet weak var secondScoreLabel: UILabel!
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var centerButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var topLeftButton: UIButton!
    var firstScore = 0;

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func bottomRightClicked(sender: AnyObject) {
        score()
        
        if (counter % 2 == 0) {
        bottomRightButton.setTitle("X", forState: .Normal)
        counter++
        }
        else {
            bottomRightButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }
    @IBAction func bottomClicked(sender: AnyObject) {
        score()
        if (counter % 2 == 0) {
            bottomButton.setTitle("X", forState: .Normal)
            counter++
        }
        else {
            bottomButton.setTitle("O", forState: .Normal)
            counter++
        }
    }
    @IBAction func bottomLeftClicked(sender: AnyObject) {
        score()
        if (counter % 2 == 0) {
            bottomLeftButton.setTitle("X", forState: .Normal)
            counter++
        }
        else {
            score()
            bottomLeftButton.setTitle("O", forState: .Normal)
            counter++
        }
    }
    @IBAction func rightClicked(sender: AnyObject) {
        score()
        if (counter % 2 == 0) {
            rightButton.setTitle("X", forState: .Normal)
            score()
            counter++
        }
        else {
            rightButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }
    @IBAction func centerClicked(sender: AnyObject) {

        if (counter % 2 == 0) {
            centerButton.setTitle("X", forState: .Normal)
            score()
            counter++
        }
        else {
            centerButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }
    
    @IBAction func topLeftClicked(sender: AnyObject) {
        if (counter % 2 == 0) {
            topLeftButton.setTitle("X", forState: .Normal)
            score()
            counter++
        }
        else {
            topLeftButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }

    @IBAction func topClicked(sender: AnyObject) {
        if (counter % 2 == 0) {
            topButton.setTitle("X", forState: .Normal)
            score()
            counter++
        }
        else {
            topButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }

    @IBAction func topRightClicked(sender: AnyObject) {
        if (counter % 2 == 0) {
            topRightButton.setTitle("X", forState: .Normal)
            score()
            counter++
        }
        else {
            topRightButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }
    @IBAction func leftClicked(sender: AnyObject) {
        if (counter % 2 == 0) {
            leftButton.setTitle("X", forState: .Normal)
            score()
            counter++
        }
        else {
            leftButton.setTitle("O", forState: .Normal)
            score()
            counter++
        }
    }
    @IBAction func resetClicked(sender: AnyObject) {
        leftButton.setTitle("", forState: .Normal)
        rightButton.setTitle("", forState: .Normal)
        topButton.setTitle("", forState: .Normal)
        topLeftButton.setTitle("", forState: .Normal)
        topRightButton.setTitle("", forState: .Normal)
        bottomButton.setTitle("", forState: .Normal)
        bottomLeftButton.setTitle("", forState: .Normal)
        bottomRightButton.setTitle("", forState: .Normal)
        centerButton.setTitle("", forState: .Normal)

        
    }
    //2d ARRAY?
    func score()    {
        if (leftButton.titleLabel=="X" && centerButton.titleLabel=="X" && rightButton.titleLabel=="X"){
            firstScore++
            firstScoreLabel.text = String(firstScore)
            
        }
    }
}

