//
//  PunViewController.swift
//  ikid
//
//  Created by YuanShaochen on 2017/11/2.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var punJokeView: UIView!
    
    @IBOutlet weak var punJokeLabel: UILabel!
    var punJokeStatus: Bool = true;
    @IBAction func punJokeNext(_ sender: UIButton) {
        punJokeLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        UIView.transition(with: punJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
            if(self.punJokeStatus){
                self.punJokeLabel.text = "Bison..."
                sender.setTitle("Back", for: UIControlState.normal)
            } else {
                self.punJokeLabel.text = "What did the buffalo say when his son went to college?"
                sender.setTitle("Next", for: UIControlState.normal)
            }
            self.punJokeStatus = !self.punJokeStatus
        }
        )
    }
}
