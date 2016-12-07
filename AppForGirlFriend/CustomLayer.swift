
//
//  FlowerLayer.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/6.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit

class CustomLayer:CAEmitterLayer{
    let emitterCell=CAEmitterCell()
    init(filePath:String) {
        super.init()
        emitterShape = kCAEmitterLayerLine
        emitterPosition = CGPoint(x: 100, y: -30)
        emitterMode = kCAEmitterLayerOutline
        
        emitterCell.contents = UIImage(named: filePath)!.cgImage
        //设置粒子缩放比例
        emitterCell.scale=1.0
        //缩放范围 正负0.05+0.02
        emitterCell.scaleRange=0.5
        //每秒粒子产生数量
        emitterCell.birthRate=130
        //粒子生命周期
        emitterCell.lifetime=5;
        //粒子速度
        emitterCell.velocity=280
        //随机速度 -5+80 --- 50+80
        emitterCell.velocityRange=150
        //逐渐消失
        emitterCell.alphaSpeed = -0.01
        //设置角度
        emitterCell.emissionRange=CGFloat(M_PI)
        // emitterCell.emissionLatitude = -(CGFloat)(M_PI)
        //设置粒子旋转角速度
        emitterCell.spin=CGFloat(M_PI_4)
        //设置layer阴影
        shadowOpacity = 1.0
        //设置圆角
        shadowRadius=2
        //设置偏移
        shadowOffset=CGSize(width: 1 ,height: 1)
        //设置阴影颜色
        shadowColor = UIColor.white.cgColor
        //将cell设置到layer
        emitterCells = [emitterCell]
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
 /*   func mankeCustomLayer(filepath:String)->CAEmitterLayer{
        
        
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterPosition = CGPoint(x: 100, y: -30)
        emitter.emitterMode = kCAEmitterLayerOutline
        
        emitterCell.contents = UIImage(named: filepath)!.cgImage
        //设置粒子缩放比例
        emitterCell.scale=1.0
        //缩放范围 正负0.05+0.02
        emitterCell.scaleRange=0.5
        //每秒粒子产生数量
        emitterCell.birthRate=130
        //粒子生命周期
        emitterCell.lifetime=5;
        //粒子速度
        emitterCell.velocity=280
        //随机速度 -5+80 --- 50+80
        emitterCell.velocityRange=150
        //逐渐消失
        emitterCell.alphaSpeed = -0.01
        //设置角度
        emitterCell.emissionRange=CGFloat(M_PI)
        // emitterCell.emissionLatitude = -(CGFloat)(M_PI)
        //设置粒子旋转角速度
        emitterCell.spin=CGFloat(M_PI_4)
        //设置layer阴影
        emitter.shadowOpacity = 1.0
        //设置圆角
        emitter.shadowRadius=2
        //设置偏移
        emitter.shadowOffset=CGSize(width: 1, height: 1)
        //设置阴影颜色
        emitter.shadowColor = UIColor.white.cgColor
        //将cell设置到layer
        emitter.emitterCells = [emitterCell]
        return emitter
        
    }*/
}

