//
//  SwiftViewController.swift
//  iOS Training
//
//  Created by Lynne Robinson on 1/7/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import UIKit

let lbl = UILabel(frame: CGRectMake(10, 100, 400, 20))

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = "Click any of the buttons below for your fortune"
        lbl.numberOfLines = 0
        lbl.lineBreakMode = NSLineBreakMode.ByWordWrapping
        self.view.addSubview(lbl)
        view.backgroundColor = UIColor.lightGrayColor()
        
        let btn1 = UIButton(type: UIButtonType.RoundedRect)
    
        btn1.setTitle("Fortune #1", forState: UIControlState.Normal)
        btn1.layer.cornerRadius = 3
        btn1.layer.borderWidth = 1
        btn1.layer.borderColor = UIColor.blueColor().CGColor
        btn1.tag = 0
        btn1.sizeToFit()
        
        btn1.center = self.view.center;
        btn1.addTarget(self, action:"buttonTouched:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: UIButtonType.RoundedRect)
        
        btn2.setTitle("Fortune #2", forState: UIControlState.Normal)
        btn2.center = CGPointMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn1.frame) + 50)
        btn2.layer.cornerRadius = 3
        btn2.layer.borderWidth = 1
        btn2.layer.borderColor = UIColor.redColor().CGColor
        btn2.tag = 1
        btn2.sizeToFit()
        btn2.addTarget(self, action:"buttonTouched:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(type: UIButtonType.RoundedRect)
        
        btn3.setTitle("Fortune #3", forState: UIControlState.Normal)
        btn3.center = CGPointMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn2.frame) + 50)
        btn3.layer.cornerRadius = 3
        btn3.layer.borderWidth = 1
        btn3.layer.borderColor = UIColor.whiteColor().CGColor
        btn3.tag = 2
        btn3.sizeToFit()
        btn3.addTarget(self, action:"buttonTouched:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn3)
        
        
        // Do any additional setup after loading the view.
    }
    
    func buttonTouched(sender: UIButton) {
        let btnText = sender.titleLabel?.text
        
        let fortunes = [" Take advantage of an upcoming opportunity - make this really long so that it's more than 1 or 2 lines", " Never quit!", " Tomorrow is another day"];
        lbl.text = btnText! + fortunes[sender.tag]
        var frame = lbl.frame
        frame.size.width = 400.0
        lbl.frame = frame;
        lbl.sizeToFit()
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
