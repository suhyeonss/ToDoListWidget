//
//  TaskList.swift
//  ToDoListWidget
//
//  Created by 이수현 on 5/30/24.
//

import SwiftUI

struct TaskList: View {
//    @State private var showNotisDonesOnly = true

    var filteredTasks: [Task] {
        tasks.filter { task in
            !task.isDone
        }
    }

    var body: some View {
        NavigationSplitView {
            // 이부분 다시 공부 필요하다..
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
    TaskList()
}
