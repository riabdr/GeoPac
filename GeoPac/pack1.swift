//
//  Pack.swift
//  ProjTest
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI
import SwiftData

struct pack1: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            HStack {
                Text("PACKING LIST")
                    .font(.system(size: 40))
                    .bold()
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                
                Button {
                    withAnimation {
                        self.showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color.purple)
                }
            }
            .padding()
        }
        Spacer()
        
        List {
            ForEach(toDos) { toDoItem in
                    Text(toDoItem.title)
                  //  }
            }
            // swipe-to-delete
            .onDelete(perform: deleteToDo)
        }
        .listStyle(.plain)
        
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: ""), showNewTask: $showNewTask)
        }
    }
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}
#Preview {
    pack1()
}
