//
//  TodoListViewController.swift
//  TODO
//
//  Created by SCI01552 on 2019/08/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var todoList: [Todo] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "todoCell")
        
        tableView.dataSource = self
        
        let createButton = UIBarButtonItem(barButtonSystemItem: .add,
                                           target: self,
                                           action: #selector(createTodoButtonDidTap))
        navigationItem.rightBarButtonItem = createButton
        
        todoList.append(Todo(title: "洗濯"))
    }
    
    @objc func createTodoButtonDidTap() {
        let createView = CreateTodoViewController()
        createView.delegate = self
        present(UINavigationController(rootViewController: createView),
                animated: true,
                completion: nil)
    }
}

extension TodoListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        cell.textLabel?.text = todoList[indexPath.row].title
        return cell
    }
}

extension TodoListViewController: CreateTodoViewControllerDelegate {
    
    func controller(_ controller: CreateTodoViewController, didCreateTodo todo: Todo) {
        todoList.append(todo)
    }
}
