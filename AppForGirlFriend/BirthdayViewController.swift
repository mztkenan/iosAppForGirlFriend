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
        
        let differenceOutput:String=String(format: "你选择的是（%@），\n距离今天(%@)\n已经过了(%1.2f)个美好的一天啦!", chosenDateString,todaysDateString,fabs(difference))
        
        outputLabel.text=differenceOutput
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        let rainDroplayer=CustomLayer.mankeCustomLayer(filepath: "Raindrop")
        rainDroplayer.frame=CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        rainDroplayer.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        view.layer.addSublayer(rainDroplayer)
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
