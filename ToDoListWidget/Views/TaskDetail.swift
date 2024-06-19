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
            Spacer()
            Text(task.name)

            HStack {
                Text(task.memo)
            }
            Spacer()
            if task.isDone == false {
                Button("완료하기") {
                    print("완료")
                }.buttonStyle(.bordered)
            } else {
                Button("취소하기") {
                    print("취소")
                }.buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    TaskDetail(task: tasks[1])
}
