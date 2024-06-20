//
//  TaskList.swift
//  ToDoListWidget
//
//  Created by suhyeonss on 5/30/24.
//

import SwiftUI

struct DoneTaskList: View {
//    @State private var showNotisDonesOnly = true

    var filteredTasks: [Task] {
        tasks.filter { task in
            task.isDone
        }
    }

    var body: some View {
        NavigationSplitView {
            List(filteredTasks) { task in
                NavigationLink {
                    TaskDetail(task: task)
                } label: {
                    TaskRow(task: task)
                }
            }
            .navigationTitle("Tasks")
        } detail: {
            Text("Select A Task")
        }
    }
}

#Preview {
    DoneTaskList()
}
