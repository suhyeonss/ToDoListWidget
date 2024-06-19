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

    var filteredCategory: [String] { tasks.filter { task in
        !showisDonesOnly || !task.isDone
    }.map { $0.category }
    }

    var body: some View {
        // 중복 제거 - 더 좋은 방법 찾기 (extension)
        let removeDup = Set(filteredCategory)
        var filteredCategory = Array(removeDup).sorted()

        NavigationSplitView {
            List {
                Toggle(isOn: $showisDonesOnly) {
                    Text("완료된 항목 안보기")
                }
                ForEach(filteredCategory, id: \.self) { category in
                    Section(header: Text(category), content: {
                        ForEach(filteredTasks) { task in
                            if task.category == category {
                                NavigationLink {
                                    TaskDetail(task: task)
                                } label: {
                                    TaskRow(task: task)
                                }
                            }
                        }
                    })
                }
            }
            .listStyle(InsetGroupedListStyle())
            .animation(.default, value: filteredTasks)
            .navigationTitle("Tasks")
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
