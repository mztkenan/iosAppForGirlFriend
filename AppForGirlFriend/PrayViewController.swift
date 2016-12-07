//
//  SingingViewController.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/3.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class PrayViewController: UIViewController {
    var isMoneyShown=false
    var isHandsomeShown=false
    var isRainShown=false
    let moneyLayer=CustomLayer(filePath: "money")
    let handsomeLayer=CustomLayer(filePath: "PENGYUYAN")
    let rainLayer=CustomLayer(filePath: "Raindrop")
  
    @IBAction func moneySelected(_ sender: AnyObject) {
        moneyLayer.emitterCell.scale=0.2
        moneyLayer.frame=CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        moneyLayer.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        if(isMoneyShown){
            moneyLayer.removeFromSuperlayer()
            isMoneyShown=false
        }
        else{
            view.layer.addSublayer(moneyLayer)
            isMoneyShown=true
        }
        
    }
    @IBAction func handsomeSelected(_ sender: AnyObject) {
        handsomeLayer.emitterCell.scale=0.2
        handsomeLayer.frame=CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        handsomeLayer.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        if(isHandsomeShown){
            handsomeLayer.removeFromSuperlayer()
            isHandsomeShown=false
        }
        else{
            view.layer.addSublayer(handsomeLayer)
            isHandsomeShown=true
        }

    }
    @IBAction func rainSelected(_ sender: AnyObject) {
        rainLayer.frame=CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        rainLayer.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        if(isRainShown){
            rainLayer.removeFromSuperlayer()
            isRainShown=false
        }
        else{
            view.layer.addSublayer(rainLayer)
            isRainShown=true
        }

        
        
    }
    
    
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
