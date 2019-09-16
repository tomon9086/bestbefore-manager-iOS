//
//  rootViewController.swift
//  bestbefore
//
//  Created by tomo on 2019/09/14.
//  Copyright © 2019 tomo. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

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
        
        let button = UIButton(type: UIButton.ButtonType.system)
        self.view.addSubview(button)
        button.setTitle("tap!", for: .normal)
        button.sizeToFit()
        button.snp.makeConstraints({
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY).offset(40)
        })
        button.rx.tap.bind(onNext: {
            label.text = "Foo!"
        })
    }

}
