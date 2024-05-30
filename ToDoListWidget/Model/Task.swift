//
//  Landmark.swift
//  ToDoListWidget
//
//  Created by 이수현 on 5/29/24.
//

import CoreLocation
import Foundation
import SwiftUI

// 뒤에 달려있는 Hashable, Codable, Identifiable 공부하기
struct Task: Hashable, Codable, Identifiable {
    var id: Int
    var category: String
    var name: String
    var memo: String
    var dueto: String
    var isDone: Bool
}
