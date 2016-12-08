//
//  ViewController.swift
//  SJUtils
//
//  Created by 张威 on 11/05/2016.
//  Copyright (c) 2016 张威. All rights reserved.
//

import UIKit
import SJUtils

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        //print(UIScreen.width)
        
        // 为毛一定要定义成var的啊
        var button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        view.addSubview(button)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            UIView.animate(withDuration: 1.0) {
                button.sj.bottom = button.sj.bottom + 100
                //button.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
            }
        }
    }
}

