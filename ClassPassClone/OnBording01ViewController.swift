//
//  OnBording01ViewController.swift
//  ClassPassClone
//
//  Created by Ryuya Tosaka on 2018/02/13.
//  Copyright © 2018年 ryuya. All rights reserved.
//

import UIKit

class OnBording01ViewController: UIViewController {
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンの枠線を白色にする
        startButton.layer.borderColor = UIColor.white.cgColor
        startButton.layer.borderWidth = 1.0
        // ボタンの枠を丸くする.
        startButton.layer.masksToBounds = true
        // コーナーの半径を設定する.
        startButton.layer.cornerRadius = 7.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
