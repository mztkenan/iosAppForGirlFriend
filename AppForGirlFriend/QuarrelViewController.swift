//
//  QuarrelViewController.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/3.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit

class QuarrelViewController: UIViewController {
    @IBOutlet weak var bunnyview1: UIImageView!
    @IBOutlet weak var bunnyview2: UIImageView!
    @IBOutlet weak var bunnyview3: UIImageView!
    @IBOutlet weak var bunnyview4: UIImageView!
    @IBOutlet weak var bunnyview5: UIImageView!

    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedStepper: UIStepper!
    @IBOutlet weak var hopsPerSecond: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    @IBAction func toggleAnimation(_ sender: AnyObject) {
        if(bunnyview1.isAnimating){
            bunnyview1.stopAnimating()
            bunnyview2.stopAnimating()
            bunnyview3.stopAnimating()
            bunnyview4.stopAnimating()
            bunnyview5.stopAnimating()
            toggleButton.setTitle("让他再滚！！", for: UIControlState.normal)
        }
        else{
            bunnyview1.startAnimating()
            bunnyview2.startAnimating()
            bunnyview3.startAnimating()
            bunnyview4.startAnimating()
            bunnyview5.startAnimating()
            toggleButton.setTitle("心软了。。。", for: UIControlState.normal)
        }

    }
    @IBAction func setSpeed(_ sender: AnyObject?) {
        bunnyview1.animationDuration=TimeInterval(2.0-speedSlider.value)
        bunnyview2.animationDuration=bunnyview1.animationDuration+TimeInterval(arc4random_uniform(10))/10
        bunnyview3.animationDuration=bunnyview1.animationDuration+TimeInterval(arc4random_uniform(10))/10
        bunnyview4.animationDuration=bunnyview1.animationDuration+TimeInterval(arc4random_uniform(10))/10
        bunnyview5.animationDuration=bunnyview1.animationDuration+TimeInterval(arc4random_uniform(10))/10
        
        bunnyview1.startAnimating()
        bunnyview2.startAnimating()
        bunnyview3.startAnimating()
        bunnyview4.startAnimating()
        bunnyview5.startAnimating()
        
        toggleButton.setTitle("心软了。。。", for: UIControlState.normal)
        let hopRateString=String(format: "%1.2f hps", 1/(2-self.speedSlider.value))
        hopsPerSecond.text=hopRateString

    }
    @IBAction func incrementSpeed(_ sender: AnyObject) {
        speedSlider.value=Float(speedStepper.value)
        setSpeed(nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hopAnimation:[UIImage]=[
            UIImage(named: "frame-1")!,
            UIImage(named: "frame-2")!,
            UIImage(named: "frame-3")!,
            UIImage(named: "frame-4")!,
            UIImage(named: "frame-5")!,
            UIImage(named: "frame-6")!,
            UIImage(named: "frame-7")!,
            UIImage(named: "frame-8")!,
            UIImage(named: "frame-9")!,
            UIImage(named: "frame-10")!,
            UIImage(named: "frame-11")!,
            UIImage(named: "frame-12")!,
            UIImage(named: "frame-13")!,
            UIImage(named: "frame-14")!,
            UIImage(named: "frame-15")!,
            UIImage(named: "frame-16")!,
            UIImage(named: "frame-17")!,
            UIImage(named: "frame-18")!,
            UIImage(named: "frame-19")!,
            UIImage(named: "frame-20")!
        ]
        bunnyview1.animationImages=hopAnimation
        bunnyview2.animationImages=hopAnimation
        bunnyview3.animationImages=hopAnimation
        bunnyview4.animationImages=hopAnimation
        bunnyview5.animationImages=hopAnimation
        bunnyview5.animationDuration=1.0
        bunnyview4.animationDuration=1.0
        bunnyview3.animationDuration=1.0
        bunnyview2.animationDuration=1.0
        bunnyview1.animationDuration=1.0
        // Do any additional setup after loading the view.
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
