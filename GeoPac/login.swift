//
//  login.swift
//  GeoPac
//
//  Created by Scholar on 6/11/24.
//
import SwiftUI

struct login : View {
    @State private var name: String = ""
    @State private var textTitle = "WHAT  IS  YOUR NAME?!"
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Image("log")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    Text(textTitle)
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, 180)
                    
                        
                    TextField("Enter Your Name:", text:
                                $name)
                    
                    .disableAutocorrection(true)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.white)
        
                   // .foregroundColor(.white)
                    //.padding()
                    .padding(.horizontal)
                    Button("S U B M I T   N A M E ") {
                        textTitle = "Welcome \(name)!!"
                            
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.white)
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: mainHome(name: $name)) {
                        Text("N E X T ")
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
    login()
}
