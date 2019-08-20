//
//  CreateTodoViewController.swift
//  TODO
//
//  Created by SCI01552 on 2019/08/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class CreateTodoViewController: UIViewController {
    
    lazy var createButton = UIBarButtonItem(title: "Create",
                                            style: .done,
                                            target: self,
                                            action: #selector(createTodoButtonDidTap))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = createButton
    }
    
    @objc func createTodoButtonDidTap() {
        dismiss(animated: true, completion: nil)
    }
}
