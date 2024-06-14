//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    // access to modelcontext; behind the scences data storage
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask : Bool
    
    var body: some View {
        VStack {
            Text("Item Name: ")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
            
            Button {
                addToDo()
                self.showNewTask = false
            } label: {
                Text("Save")
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
        .padding()
    }
    
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title)
        modelContext.insert(toDo)
    }
}

// preview for memory only
#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: ToDoItem.self, configurations: config)

    let toDo = ToDoItem(title: "Example ToDo")
    return NewToDoView(toDoItem: toDo, showNewTask: .constant(true))
        .modelContainer(container)
}
