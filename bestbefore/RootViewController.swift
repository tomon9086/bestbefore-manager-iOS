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
        label.snp.makeConstraints({
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY).offset(-300)
        })
        
        let button = UIButton(type: UIButton.ButtonType.system)
        self.view.addSubview(button)
        button.setTitle("tap!", for: .normal)
        button.sizeToFit()
        button.snp.makeConstraints({
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY).offset(-250)
        })
        button.rx.tap.bind(onNext: {
            label.text = "Foo!"
        })
        
        let textbox = UITextView()
        self.view.addSubview(textbox)
        textbox.layer.borderWidth = 1
        textbox.layer.cornerRadius = 10
        textbox.layer.borderColor = UIColor.gray.cgColor
        textbox.snp.makeConstraints({
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.snp.centerY).offset(-200)
            $0.width.equalTo(view.snp.width).offset(-40)
            $0.height.equalTo(100)
        })
        textbox.rx.text.bind(to: label.rx.text)
        label.text = "Hello!"
    }

}
