//
//  TaskRow.swift
//  ToDoListWidget
//
//  Created by suhyeonss on 5/30/24.
//

import SwiftUI

struct TaskRow: View {
    var task: Task

    var body: some View {
        HStack {
            Text(task.name)
            Spacer()
//            if task.isDone {
//                Image(systemName: "checkmark.circle.fill")
//            } else {
//                Image(systemName: "circle")
//            }

        }.padding(10)
    }
}

#Preview {
    Group {
        TaskRow(task: tasks[0])
        TaskRow(task: tasks[1])
    }
}
