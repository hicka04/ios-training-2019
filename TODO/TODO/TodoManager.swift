//
//  TodoManager.swift
//  TODO
//
//  Created by SCI01552 on 2019/09/10.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

class TodoManager {
    
    static let shared = TodoManager()
    
    private(set) var todoList: [Todo] = []
    private(set) var doneList: [Todo] = []
    
    private init() {}
    
    func add(todo: Todo) {
        todoList.append(todo)
    }
    
    func remove(at index: Int) {
        guard index < todoList.count else {
            return
        }
        
        todoList.remove(at: index)
    }
    
    func remove(todo: Todo) {
        guard todoList.contains(todo) else {
            return
        }
        
        todoList.removeAll { item in
            return item == todo
        }
    }
    
    func markDone(at index: Int) {
        guard index < todoList.count else {
            return
        }
        
        doneList.append(todoList[index])
        todoList.remove(at: index)
    }
    
    func markDone(todo: Todo) {
        guard todoList.contains(todo) else {
            return
        }
        
        doneList.append(todo)
        todoList.removeAll { item in
            return item == todo
        }
    }
}
