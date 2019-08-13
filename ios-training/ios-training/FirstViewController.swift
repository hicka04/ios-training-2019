//
//  FirstViewController.swift
//  ios-training
//
//  Created by hicka04 on 2019/08/13.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var navigationButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationButton.addTarget(self,
                                   action: #selector(navigationButtonDidTap),
                                   for: .touchUpInside)
        navigationItem.title = "First"
    }
    
    @objc func navigationButtonDidTap() {
        // TODO: 画面遷移
        print("navigationButtonDidTap")
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}
