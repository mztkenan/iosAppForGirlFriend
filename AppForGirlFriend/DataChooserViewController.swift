//
//  DataChooserViewController.swift
//  AppForGirlFriend
//
//  Created by 章斌斌 on 2016/12/4.
//  Copyright © 2016年 章斌斌. All rights reserved.
//

import UIKit

class DataChooserViewController: UIViewController {

    @IBAction func setDateTime(_ sender: AnyObject) {
       (presentingViewController as! BirthdayViewController).calculateDateDifference(chosenDate: (sender as! UIDatePicker).date)
        
        
    }
    @IBAction func dismissDateTime(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       (presentingViewController as! BirthdayViewController).calculateDateDifference(chosenDate: Date())
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
