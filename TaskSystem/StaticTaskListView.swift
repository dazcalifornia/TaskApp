//
//  TaskListView.swift
//  TaskSystem
//
//  Created by Supakit Wiwustrinon on 21/12/2566 BE.
//

import SwiftUI

struct StaticTaskListView: View {
    
    let title: String
    let task:[Task]
    
    var body: some View {
        List(task){task in
            HStack{
                Image(systemName: task.isCompleted ? "largecircle.fill.circle":  "circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    StaticTaskListView(title: "All", task: Task.examples())
}
