//
//  CreateTodoViewController.swift
//  TODO
//
//  Created by SCI01552 on 2019/08/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

protocol CreateTodoViewControllerDelegate: AnyObject {
    
    func controller(_ controller: CreateTodoViewController,
                    didCreateTodo todo: Todo)
}

class CreateTodoViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    lazy var createButton = UIBarButtonItem(title: "Create",
                                            style: .done,
                                            target: self,
                                            action: #selector(createTodoButtonDidTap))
    
    weak var delegate: CreateTodoViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = createButton
        
        textField.delegate = self
    }
    
    @objc func createTodoButtonDidTap() {
        if let todoTitle = textField.text {
            delegate?.controller(self, didCreateTodo: Todo(title: todoTitle))
        }
        dismiss(animated: true, completion: nil)
    }
}

extension CreateTodoViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
//        createButton.isEnabled = !(textField.text?.isEmpty ?? true)
        return true
    }
}
