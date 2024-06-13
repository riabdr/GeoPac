//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 6/11/24.
//

import Foundation
import SwiftData

@Model
class ToDoItem {
    var title : String
    
    init(title: String) {
        self.title = title
    }
}
