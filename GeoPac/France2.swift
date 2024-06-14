//
//  ContentView.swift
//  TravelAppPractice
//
//  Created by Scholar on 6/11/24.
//


//
//  ContentView.swift
//  TravelAppPractice
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct France2: View {
    var body: some View {
        
        
        NavigationStack {
            ZStack{
                
                VStack{
                    ZStack{
                        Image("Mainn")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                        //Spacer()
                        
                        HStack {
                            //Spacer()
                            //                            Text("France")
                            //                            // Spacer()
                            //                                .font(.system(size: 60))
                            //                                .fontWeight(.black)
                            //                                .foregroundColor(Color.white)
                            //                                .padding(.vertical, -14.0)
                            //                                .padding()
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    Spacer()
                }
                
                
                ScrollView {
                    
                    Text("Discover France, a country renowned for its rich history, stunning landscapes, and world-famous cuisine. From charming villages to bustling cities, France captivates with its blend of tradition and modernity. Experience the art, fashion, and gastronomy that makes France an enduring the elegant culture.")
                       
                        .multilineTextAlignment(.center)
                        .font(.custom("Times New Roman", fixedSize: 20))
                    Text("Places To Visit")
                        .multilineTextAlignment(.center)
                    
                        .padding()
                        .font(.custom("Times New Roman", fixedSize:50))                         .fontWeight(.light)
                       // .padding()
                    
                    VStack{
                        Spacer ()
                        
                        HStack{
                            
                            Text("Eiffel Tower          ")
                                .font(.custom("STIX Two Math", fixedSize:22))
                                .fontWeight(.semibold)
                            Image("ET")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            
                        }
                        
                        HStack{
                            NavigationLink(destination: LouvreMuseum()) {
                                Text("Louvre Museum ")
                                    .foregroundColor(Color.black)
                            }
                          
                            .font(.custom("STIX Two Math", fixedSize:22))                            .fontWeight(.semibold)
                            Image("LouvreMuseum"                                )
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        HStack{
                            Text("French Alps         ")
                                .font(.custom("STIX Two Math", fixedSize:22))                                .fontWeight(.bold)
                            Image("Alps")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        HStack{
                            Text("Port Vauban         ")
                                .font(.custom("STIX Two Math", fixedSize:22))                                 .fontWeight(.semibold)
                            Image("Port")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        HStack{
                            Text("Seine River           ")
                                .font(.custom("STIX Two Math", fixedSize:22))                                 .fontWeight(.semibold)
                            Image("river")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                    }
                }
                .frame(height: 600)
                .position(x: 180, y : 475)
                .padding()
            }
            
            
            
            
            //  VStack{
            
            //   }
            //    .padding(.top, -30)
            
            
        }
    }
}
