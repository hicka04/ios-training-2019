//
//  ModalViewController.swift
//  ios-training
//
//  Created by hicka04 on 2019/08/13.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.title = "Modal"
        let closeButton = UIBarButtonItem(barButtonSystemItem: .stop,
                                          target: self,
                                          action: #selector(close))
        navigationItem.rightBarButtonItem = closeButton
    }
    
    @objc func close() {
        print("close")
        dismiss(animated: true, completion: nil)
    }
}
