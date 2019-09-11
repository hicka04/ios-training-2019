//
//  TabBarController.swift
//  TODO
//
//  Created by SCI01552 on 2019/09/03.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todoListView = UINavigationController(rootViewController: TodoListViewController())
        todoListView.tabBarItem = UITabBarItem(title: "TODO", image: nil, tag: 0)
        
        let doneListView = UINavigationController(rootViewController: DoneListViewController())
        doneListView.tabBarItem = UITabBarItem(title: "DONE", image: UIImage(named: "done-list"), tag: 1)
        
        viewControllers = [
            todoListView,
            doneListView
        ]
    }
}
