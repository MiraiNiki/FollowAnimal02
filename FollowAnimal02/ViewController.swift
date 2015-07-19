//
//  ViewController.swift
//  FollowAnimal02
//
//  Created by MiraiNIKI on 2015/07/19.
//  Copyright (c) 2015年 UnivercityofTsukuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aka01: UIButton!
    @IBOutlet weak var aka02: UIButton!
    @IBOutlet weak var ore01: UIButton!
    let akakin: UIImage = UIImage(named:"akakin.png")!
    let orekin: UIImage = UIImage(named:"orekin.png")!
    
    var haikei_x : CGFloat = 0
    var haikei_y : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        haikei_x = self.view.bounds.height
        haikei_y = self.view.bounds.width
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "move01:", userInfo: nil, repeats: true)
        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "move02:", userInfo: nil, repeats: true)
        NSTimer.scheduledTimerWithTimeInterval(8.0, target: self, selector: "move03:", userInfo: nil, repeats: true)
    }
    func move01(aka01: UIButton){
        let x = arc4random_uniform(UInt32(self.haikei_x))
        let y = arc4random_uniform(UInt32(self.haikei_y))
        UIView.animateWithDuration(1.0, animations: {
            self.aka01.center = CGPointMake(CGFloat(x), CGFloat(y))
        })
    }
    func move02(aka02: UIButton){
        let x = arc4random_uniform(UInt32(self.haikei_x))
        let y = arc4random_uniform(UInt32(self.haikei_y))
        UIView.animateWithDuration(1.0, animations: {
            self.aka02.center = CGPointMake(CGFloat(x), CGFloat(y))
        })
    }

    func move03(ore01: UIButton){
        let x = arc4random_uniform(UInt32(self.haikei_x))
        let y = arc4random_uniform(UInt32(self.haikei_y))
        UIView.animateWithDuration(1.0, animations: {
            self.ore01.center = CGPointMake(CGFloat(x), CGFloat(y))
        })
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

