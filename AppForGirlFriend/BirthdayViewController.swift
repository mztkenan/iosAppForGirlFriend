//
//  BirthdayViewController.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/3.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {

    func calculateDateDifference(chosenDate:Date){
        let todaysDate:Date=Date()
        let difference:TimeInterval=todaysDate.timeIntervalSince(chosenDate)/86400
        
        let dateFormat:DateFormatter=DateFormatter()
        dateFormat.dateFormat="MMMM d,yyyy"
        
        let todaysDateString:String=dateFormat.string(from: todaysDate)
        let chosenDateString:String=dateFormat.string(from: chosenDate)
        
        let differenceOutput:String=String(format: "你选择的是（%@），距离今天（%@）已经过了（%1.2f）个美好的一天啦", chosenDateString,todaysDateString,fabs(difference))
        
        outputLabel.text=differenceOutput
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    
    func setEmitter()  {
        let rect = CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        let emitter = CAEmitterLayer()
        emitter.frame = rect
        view.layer.addSublayer(emitter)
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterPosition = CGPoint(x: 100, y: -30)
        emitter.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        emitter.emitterMode = kCAEmitterLayerOutline
        
        let emitterCell = CAEmitterCell()
        emitterCell.contents = UIImage(named: "Raindrop")!.cgImage
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
        
        //设置颜色
        emitter.shadowColor = UIColor.white.cgColor
        
        
        emitter.emitterCells = [emitterCell]  //这里可以设置多种粒子 我们以一种为粒子
        
        
        emitterCell.alphaSpeed = -0.01  //逐渐消失
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setEmitter()
        // Do any additional setup after loading the view, typically from a nib.
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
