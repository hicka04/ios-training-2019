//
//  TabBarController.swift
//  TODO
//
//  Created by SCI01552 on 2019/09/03.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    let todoListView: TodoListViewController = {
        let todoListView = TodoListViewController()
        todoListView.tabBarItem = UITabBarItem(title: "TODO", image: nil, tag: 0)
        return todoListView
    }()
    
    let doneListView: DoneListViewController = {
        let doneListView = DoneListViewController()
        doneListView.tabBarItem = UITabBarItem(title: "DONE", image: nil, tag: 1)
        return doneListView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            UINavigationController(rootViewController: todoListView),
            UINavigationController(rootViewController: doneListView)
        ]
    }
}
