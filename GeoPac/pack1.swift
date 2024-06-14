
import SwiftUI

import SwiftUI

import SwiftData



struct pack1: View {

    

    @State private var showNewTask = false

    @Query var toDos: [ToDoItem]

    @Environment(\.modelContext) var modelContext



    var body: some View {

        VStack {

               HStack {

                   Text("Packing List")
                       .foregroundColor(.white)
                       .font(.system(size: 40))

                       .fontWeight(.black)

                   Spacer()

                   

                   Button {

                       withAnimation {

                           self.showNewTask = true

                       }

                   } label: {

                       Text("+")

                           .font(.largeTitle)

                           .fontWeight(.bold)

                   }

               }

               .padding()

               

               Spacer()

               

               List {

                   ForEach(toDos) { toDoItem in

                     //  if toDoItem.isImportant {

                           Text("⭐️" + toDoItem.title)

                      // } else {

                           //Text(toDoItem.title)

                      // }

                   }

                   .onDelete(perform: deleteToDo)

               }

               .listStyle(.plain)

               

               if showNewTask {

                   NewToDoView(toDoItem: ToDoItem(title: ""), showNewTask: $showNewTask)

               }

           }

           .padding()

           .background(

               Image("bb5")

//                .resizable(resizingMode: .stretch)
//
//                   .scaledToFill()
//
//                   .edgesIgnoringSafeArea(.all)
//                   .aspectRatio(contentMode: .fit)
                .resizable(resizingMode: .stretch)
               // .aspectRatio(contentMode: .fit)
            //    .scaledToFill()
                .edgesIgnoringSafeArea(.all)
//

           )

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
