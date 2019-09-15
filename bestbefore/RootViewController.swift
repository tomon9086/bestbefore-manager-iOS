//
//  rootViewController.swift
//  bestbefore
//
//  Created by tomo on 2019/09/14.
//  Copyright © 2019 tomo. All rights reserved.
//

import UIKit
import SnapKit

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel()
        self.view.addSubview(label)
        label.text = "Hello!"
        label.snp.makeConstraints({
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
        })
    }

}
