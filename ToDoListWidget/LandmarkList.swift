//
//  LandmarkList.swift
//  ToDoListWidget
//
//  Created by 이수현 on 5/29/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
            List(landmarks, id: \.id) { landmark in


            }
        }
}

#Preview {
    LandmarkList()
}
