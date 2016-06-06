//
//  ViewController.swift
//  YYNib-swift
//
//  Created by 昭荣伊 on 16/6/6.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInfoView: UserInfoView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userInfoView.backgroundColor = UIColor.orangeColor();
        
        let userInfoView1 = UserInfoView(frame: CGRectMake(20, 200, 320, 60));
        self.view .addSubview(userInfoView1);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

