//
//  TaskList.swift
//  ToDoListWidget
//
//  Created by 이수현 on 5/30/24.
//

import SwiftUI

struct TaskList: View {
    @State private var showisDonesOnly = false

    var filteredTasks: [Task] {
        tasks.filter { task in
            !showisDonesOnly || !task.isDone
        }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showisDonesOnly) {
                    Text("완료된 항목 안보기")
                }
                ForEach(filteredTasks) { task in
                    NavigationLink {
                        TaskDetail(task: task)
                    } label: {
                        TaskRow(task: task)
                    }
                }
            }
            .animation(.default, value: filteredTasks)
            .navigationTitle("Tasks")
            .toolbar {
                Button("filter", systemImage: "line.3.horizontal", action: printing)
            }
        } detail: {
            Text("Select A Task")
        }
    }
}

func printing() {
    print("ddddddd")
}

#Preview {
    TaskList()
}
