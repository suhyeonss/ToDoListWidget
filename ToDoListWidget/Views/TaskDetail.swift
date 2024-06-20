//
//  TaskDetail.swift
//  ToDoListWidget
//
//  Created by suhyeonss on 5/30/24.
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
            HStack {
                if task.isDone == false {
                    Button("완료하기") {
                        print("완료")
                    }.buttonStyle(.bordered)
                } else {
                    Button("취소하기") {
                        print("취소")
                    }.buttonStyle(.borderedProminent)
                }
                Button("삭제하기") {
                    print("삭제")
                }.buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    TaskDetail(task: tasks[0])
}
