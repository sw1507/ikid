//
//  KnockViewController.swift
//  ikid
//
//  Created by YuanShaochen on 2017/11/2.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import UIKit

class KnockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var knockKnockStatus: Int = 0;

    @IBOutlet var knockKnockView: UIView!
    
    @IBOutlet weak var knockKnockLabel: UILabel!
    @IBAction func knockKnockNext(_ sender: UIButton) {
        knockKnockStatus += 1
        if(knockKnockStatus > 4){
            knockKnockStatus = 0
        }
        knockKnockLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        UIView.transition(with: knockKnockView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
            switch self.knockKnockStatus {
            case 0:
                self.knockKnockLabel.text = "Knock Knock"
                sender.setTitle("Next", for: UIControlState.normal)
            case 1:
                self.knockKnockLabel.text = "Who's there?"
                sender.setTitle("Next", for: UIControlState.normal)
            case 2:
                self.knockKnockLabel.text = "Wanda."
                sender.setTitle("Next", for: UIControlState.normal)
            case 3:
                self.knockKnockLabel.text = "Wanda who?"
                sender.setTitle("Next", for: UIControlState.normal)
            case 4:
                self.knockKnockLabel.text = "Wanda hang out with me right now?"
                sender.setTitle("Back", for: UIControlState.normal)
            default:
                self.knockKnockLabel.text = "Knock Knock"
                sender.setTitle("Next", for: UIControlState.normal)
                self.knockKnockStatus = 0
            }
        }
        )
    }
    
}
