//
//  ViewController.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/3.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func exitTohere(sender: UIStoryboardSegue){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        let emitter = CAEmitterLayer()
        emitter.frame = rect
        view.layer.addSublayer(emitter)
        emitter.emitterShape = kCAEmitterLayerLine
    
        emitter.emitterPosition = CGPoint(x: 100, y: -30)
        emitter.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        emitter.emitterMode = kCAEmitterLayerOutline
        
        let emitterCell = CAEmitterCell()
        emitterCell.contents = UIImage(named: "sakulaFlower")!.cgImage
        //设置粒子缩放比例
        emitterCell.scale=0.02
        //缩放范围 正负0.05+0.02
        emitterCell.scaleRange=0.5
        //每秒粒子产生数量
        emitterCell.birthRate=50
        //粒子生命周期
        emitterCell.lifetime=80;
        //粒子速度
        emitterCell.velocity=80
        //随机速度 -5+80 --- 50+80
        emitterCell.velocityRange=50
        //设置角度
        emitterCell.emissionRange=CGFloat(M_PI)
        //设置粒子旋转角速度
        emitterCell.spin=CGFloat(M_PI_4)
        //设置layer阴影
        emitter.shadowOpacity = 1.0
        //设置圆角
        emitter.shadowRadius=8
        //设置偏移
        emitter.shadowOffset=CGSize(width: 3, height: 3)
        //设置颜色
        emitter.shadowColor = UIColor.white.cgColor
        emitter.emitterCells = [emitterCell]
        //emitterCell.scaleSpeed = -0.15  //逐渐变小
        
        emitterCell.alphaRange = 0.75   //随机透明度
        emitterCell.alphaSpeed = -0.01  //逐渐消失

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

