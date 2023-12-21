//
//  TaskView.swift
//  TaskSystem
//
//  Created by Supakit Wiwustrinon on 21/12/2566 BE.
//

import SwiftUI

struct TaskView: View {
    
    @Binding var task: Task
    @Binding var selectedTask: Task?
    @Binding var inspectorIsShown: Bool
    
    @Environment(\.openWindow) var openWindow
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            
            TextField("New Task", text: $task.title)
                .textFieldStyle(.plain)
            
            Button(action: {
                inspectorIsShown = true
                selectedTask = task
                
            }, label: {
                Image(systemName:"ellipsis")
            })
        }
    }
}

#Preview {
    TaskView(task: .constant(Task.example()),
             selectedTask: .constant(nil), inspectorIsShown: .constant(false))
        .padding()
}
