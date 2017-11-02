//
//  GoodViewController.swift
//  ikid
//
//  Created by YuanShaochen on 2017/11/2.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var goodJokeView: UIView!
    
    @IBOutlet weak var goodJokeLabel: UILabel!
    var goodJokeStatus: Bool = true;
    @IBAction func goodJokeNext(_ sender: UIButton) {
        goodJokeLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        UIView.transition(with: goodJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
            if(self.goodJokeStatus){
                self.goodJokeLabel.text = "So I want to go home."
                sender.setTitle("Back", for: UIControlState.normal)
            } else {
                self.goodJokeLabel.text = "My boss told me to have a good day."
                sender.setTitle("Next", for: UIControlState.normal)
            }
            self.goodJokeStatus = !self.goodJokeStatus
        }
        )
    }
}
