//
//  TaskDetail.swift
//  ToDoListWidget
//
//  Created by 이수현 on 5/30/24.
//

import SwiftUI

struct TaskDetail: View {
    var task: Task
    var body: some View {
        VStack {
            Text(task.name)

            HStack {
                Text(task.memo)
            }
        }
    }
}

#Preview {
    TaskDetail(task: tasks[0])
}
