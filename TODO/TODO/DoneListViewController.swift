//
//  DoneListViewController.swift
//  TODO
//
//  Created by SCI01552 on 2019/09/03.
//  Copyright © 2019 hicka04. All rights reserved.
//

import UIKit

class DoneListViewController: UIViewController {
    
    let todoManager = TodoManager.shared
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "doneCell")
    }
}

extension DoneListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoManager.doneList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doneCell", for: indexPath)
        cell.textLabel?.text = todoManager.doneList[indexPath.row].title
        return cell
    }
}
