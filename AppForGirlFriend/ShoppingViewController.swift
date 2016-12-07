//
//  ShoppingViewController.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/3.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit
import SafariServices

class ShoppingViewController: UIViewController {
    var website:String="http://www.taobao.com"
    
    @IBAction func doActionSheet(_ sender: AnyObject) {
        let alertController=UIAlertController(title: "让他放血", message: "选择一家电商", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let taobaoAction=UIAlertAction(title: "淘宝", style: UIAlertActionStyle.default, handler: {(alertAction:UIAlertAction)in self.website="http://www.taobao.com"
            self.openWeb(website: self.website)
            }
        )
        
        let jdAction=UIAlertAction(title: "京东", style: UIAlertActionStyle.default, handler: {(alertAction:UIAlertAction)in self.website="http://www.jd.cn"
            self.openWeb(website: self.website)
            }
        )
        
        let  jmypAction=UIAlertAction(title: "聚美优品", style: UIAlertActionStyle.default, handler: {(alertAction:UIAlertAction)in self.website="http://www.jumei.com"
            self.openWeb(website: self.website)
        })
        let cancelAction=UIAlertAction(title: "心软了", style: UIAlertActionStyle.cancel, handler: nil)
        
        alertController.addAction(taobaoAction)
        alertController.addAction(jdAction)
        alertController.addAction(jmypAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil);
        
        
    }
    
    func openWeb(website:String){
        let safatiController=SFSafariViewController(url: NSURL(string: website) as! URL)
        present(safatiController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rainDroplayer=CustomLayer(filePath: "Raindrop")
        rainDroplayer.frame=CGRect(x: 0.0, y: -70.0, width: view.bounds.width,height: 50.0)
        rainDroplayer.emitterSize = CGSize(width: self.view.bounds.size.width*2, height: 0)
        view.layer.addSublayer(rainDroplayer)
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
