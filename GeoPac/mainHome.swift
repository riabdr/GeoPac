//
//  mainHome.swift
//  GeoPac
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct mainHome: View {
    //           Text("Welcome, \(name.isEmpty ? "guest" : name)!")
    
    @Binding var name: String
    @State var welcomeMessage: String = ""
    func buttonPressed() {
        print("Button pressed")
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("Welcome, \(name.isEmpty ? "Guest" : name)!")
                        //.font(.largeTitle)
                        .font(.custom("Times New Roman", fixedSize:50))
                    //                           .font(.largeTitle)
                    //                           .padding()
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Text("UNITED STATES")
                            .bold()
                            .font(.title)
                            .multilineTextAlignment(.leading)
                        
                        Button(action:{
                            buttonPressed()
                        }) {
                            // Change Page1() view to State
                           // NavigationLink(destination: NewYork()) {
                                NavigationLink(destination: newY()) {
                                    Image("newyork1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                        }
                        
                        Button(action:{
                            buttonPressed()
                        }) {
                            // Change Page1() view to State
                            NavigationLink(destination: NewYork()) {
                                NavigationLink(destination: login()) {
                                    Image("cali1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    //
                                    
                                    
                                }
                                
                            }
                        }
                        
                        Button(action:{
                            buttonPressed()
                        }) {
                            // Change Page1() view to State
                            NavigationLink(destination: NewYork()) {
                                NavigationLink(destination: login()) {
                                    Image("hawaii1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                        }
                        Button(action:{
                            buttonPressed()
                        }) {
                            // Change Page1() view to State
                            NavigationLink(destination: NewYork()) {
                                NavigationLink(destination: login()) {
                                    Image("alaska1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                        }
                        
                        
                        
                        ////
                        .padding()
                        
                        VStack(spacing: 20) {
                            Text("INTERNATIONAL")
                                .bold()
                                .font(.title)
                                .multilineTextAlignment(.leading)
                            
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: France2()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("france1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            ///
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: France2()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("japan1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: France2()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("dubai1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: France2()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("bali1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: France2()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("canada1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: France2()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("brazil1")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            Button(action:{
                                buttonPressed()
                            }) {
                                // Change Page1() view to Country
                                NavigationLink(destination: mmm()) {
                                    //  NavigationLink(destination: login()) {
                                    Image("mm")
                                        .resizable()
                                        .frame(width: 350, height: 170)
                                    
                                }
                            }
                            
                            
                        }
                    }
                                    
                                    
                                    
                                }
                            }
                            .toolbar {
                                // Will change emojis to icons
                                ToolbarItemGroup(placement: .status) {
                                    NavigationLink(destination: ContentView()) {
                                        Image("homee")
                                        //.font(.title)
                                    }
                                    
                                    NavigationLink(destination: login()) {
                                        Image("loco")
                                        //.font(.title)
                                    }
                                    NavigationLink(destination: pack1()) {
                                        Image("back")
                                        // .font(.title)
                                    }
                                    NavigationLink(destination: key()) {
                                        Image("key")
                                        // .font(.title)
                                    }
                                }
                            }
                        }
                    }
                
          
                    
                    #Preview {
                        ContentView()
                    }
               
            
