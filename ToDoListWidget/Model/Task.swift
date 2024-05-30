//
//  Landmark.swift
//  ToDoListWidget
//
//  Created by 이수현 on 5/29/24.
//

import CoreLocation
import Foundation
import SwiftUI
struct Task: Hashable, Codable {
    var id: Int
    var category: String
    var name: String
    var isDone: Bool
}
