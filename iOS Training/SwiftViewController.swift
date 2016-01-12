//
//  SwiftViewController.swift
//  iOS Training
//
//  Created by Lynne Robinson on 1/7/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import UIKit

let lbl = UILabel(frame: CGRectMake(10, 250, 400, 20))

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = "Click any of the buttons below for your fortune"
        lbl.numberOfLines = 0
        lbl.lineBreakMode = NSLineBreakMode.ByWordWrapping
        self.view.addSubview(lbl)
        view.backgroundColor = UIColor.lightGrayColor()
        
        let btn1 = UIButton(type: .RoundedRect)
    
        btn1.setTitle("Fortune #1", forState: UIControlState.Normal)
        setButtonBorder(btn1, colorName: UIColor.blueColor())
        btn1.tag = 0
        btn1.sizeToFit()
        
        sizeButtonFrame(btn1)
        
        btn1.center = self.view.center;
        btn1.addTarget(self, action:"buttonTouched:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: UIButtonType.RoundedRect)
        
        btn2.setTitle("Fortune #2", forState: .Normal)
        btn2.center = CGPointMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn1.frame) + 50)
        setButtonBorder(btn2, colorName: UIColor.redColor())
        btn2.tag = 1
        btn2.sizeToFit()
        
        sizeButtonFrame(btn2)
        
        btn2.addTarget(self, action:"buttonTouched:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(type: UIButtonType.RoundedRect)
        
        btn3.setTitle("Fortune #3", forState: .Normal)
        btn3.center = CGPointMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn2.frame) + 50)
        setButtonBorder(btn3, colorName: UIColor.whiteColor())
        btn3.tag = 2
        btn3.sizeToFit()
        sizeButtonFrame(btn3)
        btn3.addTarget(self, action:"buttonTouched:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(btn3)
        
        let btn4 = UIButton(type: .RoundedRect)
        
        btn4.setTitle("Dimiss Modal", forState: .Normal)
        btn4.center = CGPointMake(275, 70)
        setButtonBorder(btn4, colorName: UIColor.blackColor())
        btn4.sizeToFit()
        sizeButtonFrame(btn4)
        btn4.addTarget(self, action:"dismissButtonTouched:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(btn4)
        
        let btn5 = UIButton(type: .RoundedRect)
        
        btn5.setTitle("Push to Obj-C", forState: .Normal)
        btn5.center = CGPointMake(275, 150)
        setButtonBorder(btn5, colorName: UIColor.blackColor())
        btn5.sizeToFit()
        sizeButtonFrame(btn5)
        btn5.addTarget(self, action: "pushObjC:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(btn5)
    
        // Do any additional setup after loading the view.
    }
    
    func buttonTouched(sender: UIButton) {
        //let btnText = sender.titleLabel?.text
        
        let fortunes = [" Take advantage of an upcoming opportunity - make this really long so that it's more than 1 or 2 lines", " Never quit!", " Tomorrow is another day"];
        if let btnText = sender.titleLabel?.text {
            lbl.text = btnText + fortunes[sender.tag]
        } else {
            lbl.text = fortunes[sender.tag]
        }
        
        var frame = lbl.frame
        frame.size.width = 400.0
        lbl.frame = frame;
        lbl.sizeToFit()
        
        self.view.addSubview(lbl)
    }
    
    func dismissButtonTouched(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func pushObjC(sender: UIButton) {
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func sizeButtonFrame(btn: UIButton) {
        var frame = btn.frame
        frame.size.width += 20.0
        frame.size.height += 20.0
        btn.frame = frame
    }
    
    func setButtonBorder(btn: UIButton, colorName: UIColor) {
        btn.layer.cornerRadius = 3
        btn.layer.borderWidth = 1
        btn.layer.borderColor = colorName.CGColor
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
