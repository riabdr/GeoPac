//
//  ContentView.swift
//  GeoPac
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var guestName: String = ""
    var body: some View {
        
        
            NavigationStack{
                
                ZStack {
                    Image("bb1")
                        .resizable(resizingMode: .stretch)
                       // .aspectRatio(contentMode: .fit)
                    //    .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
//
                    
                
                VStack {
//                    Text("GeoPac")
//                        .font(.custom("Snell Roundhand",fixedSize: 120))
//                        .foregroundColor(.white)
                       
                        
                   
                    NavigationLink(destination: login()) {
                        Text("L O G I N")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    .padding(.top, 350)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.white)
                    
                    //
                    NavigationLink(destination: mainHome(name: $guestName)) {
                        Text("U S E   A S   A   G U E S T")
                            .font(.title2)
                    
                            .foregroundColor(.black)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.white)
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
