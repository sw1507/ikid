//
//  DadViewController.swift
//  ikid
//
//  Created by YuanShaochen on 2017/11/2.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var dadJokeView: UIView!
    
    @IBOutlet weak var dadJokeLabel: UILabel!
    var dadJokeStatus: Bool = true;
    @IBAction func dadJokeNext(_ sender: UIButton) {
        dadJokeLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        UIView.transition(with: dadJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
            if(self.dadJokeStatus){
                self.dadJokeLabel.text = "You!"
                sender.setTitle("Back", for: UIControlState.normal)
            } else {
                self.dadJokeLabel.text = "I asked my dad for his best dad joke and he said..."
                sender.setTitle("Next", for: UIControlState.normal)
            }
            self.dadJokeStatus = !self.dadJokeStatus
        }
        )
    }
}
