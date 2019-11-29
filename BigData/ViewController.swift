//
//  ViewController.swift
//  BigData
//
//  Created by student on 2019/11/27.
//  Copyright © 2019年 吴谭波. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        
        let btn = UIButton(frame: CGRect(x: 20, y: 50, width: 100, height: 200))
        btn.setTitle("开始运算", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.setTitleColor(UIColor.brown, for: .highlighted)
        btn.layer.borderWidth = 1
        btn.addTarget(self, action: #selector(startCalculate), for: .touchUpInside)
        self.view.addSubview(btn)
        
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 44))
        label.text = "1"
        label.textColor = UIColor.black
        self.view.addSubview(label)
        
        let text = """
            WHERE
        YOU
            WALK
        I WILL
            BE
        THERE
                MY
        SIDE
            IN LIFE
        YOU WAKE
            WITHIN ME
        WHERE
        YOU
            WALK
        I WILL
            BE
        THERE
                MY
        SIDE
            IN LIFE
        YOU WAKE
            WITHIN ME
        """
        let textView = UITextView(frame: CGRect(x: 10, y: 200, width: self.view.frame.width - 20, height: self.view.frame.height - 250))
        textView.text = text
        textView.textColor = UIColor.black
        textView.textAlignment = .center
        textView.layer.borderWidth = 1
        textView.font = UIFont.systemFont(ofSize: 44)
        self.view.addSubview(textView)
        
    }
    
    @objc func startCalculate() {
        DispatchQueue.global().async {
            var number = 0
            for num in 1...9999999 {
                number += num
                DispatchQueue.main.async {
                    self.label.text = "\(number)"
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

