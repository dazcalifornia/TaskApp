//
//  TaskGroup.swift
//  TaskSystem
//
//  Created by Supakit Wiwustrinon on 21/12/2566 BE.
//

import Foundation

struct TaskGroup: Identifiable, Hashable{
    let id = UUID()
    var title: String
    let creationDate: Date
    var tasks: [Task]
    
    init(title: String, creationDate: Date = Date(), tasks: [Task]=[]) {
        self.title = title
        self.creationDate = creationDate
        self.tasks = tasks
    }
    
    static func example()->TaskGroup{
        let task1 = Task(title: "SUSSY")
        let task2 = Task(title: "Chores")
        
        var group = TaskGroup(title: "Personality")
        group.tasks = [task1,task2]
        return group
        
    }
    static func examples()->[TaskGroup]{
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "New list")
        return [group1, group2]
        
    }
}
