//
//  TaskSystemApp.swift
//  TaskSystem
//
//  Created by Supakit Wiwustrinon on 21/12/2566 BE.
//

import SwiftUI

@main
struct TaskSystemApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().accentColor(.accent)
        }
        .commands{
            CommandMenu("Task"){
                Button("Add new Task"){
                    //code here
                }
                .keyboardShortcut(KeyEquivalent("r"), modifiers: .command)
            }
            CommandGroup(after: .newItem){
                Button("Add new Group"){
                    //code here
                }
            }
        }
        WindowGroup("Special Window"){
            Text("Special window")
                .frame(minWidth: 200, idealWidth: 300, minHeight: 200)
        }
        .defaultPosition(.leading)
    }
}
