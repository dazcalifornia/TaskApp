//
//  TaskListView.swift
//  TaskSystem
//
//  Created by Supakit Wiwustrinon on 21/12/2566 BE.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    @State private var selectedTask: Task? = nil
       
    @State private var inspectorIsShown: Bool = false
    
    var body: some View {
        List($tasks){ $task in
            TaskView(task: $task,
                     selectedTask: $selectedTask,
                                          inspectorIsShown: $inspectorIsShown)
        }
        .navigationTitle(title)
        .toolbar{
            ToolbarItemGroup{
                Button{
                    tasks.append(Task(title: "New task"))
                } label: {
                    Label("Add new Task", systemImage: "plus")
                }
                Button{
                    inspectorIsShown.toggle()
                } label: {
                    Label("Show Inspector", systemImage: "ellipsis")
                }
                
            }
           
        }
        .inspector(isPresented: $inspectorIsShown){
            Group{
                if let selectedTask {
                    Text(selectedTask.title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }else{
                    Text("Nothings was Selected ")
                }
            }
            .frame(minWidth: 100,maxWidth: .infinity)
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}
