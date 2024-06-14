//
//  ContentView.swift
//  NewYorkPage
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct newY: View {
    var body: some View {
        
        NavigationStack {
                    ZStack{
//                        Image("Screenshot 2024-06-13 at 11.28.31 AM")
//                            .resizable(resizingMode: .stretch)
//                            .aspectRatio(contentMode: .fit)
//                            .ignoresSafeArea()
//                            .padding(.top, -500)
                        //Spacer()
                       
                        VStack{
                            ZStack{
                                Image("newyork2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .ignoresSafeArea()
//                                //Spacer()
                                
                                HStack {
//                                    //Spacer()
//                                    Text("New York")
//                                    // Spacer()
//                                        .font(.system(size: 60))
//                                        .fontWeight(.black)
//                                        .foregroundColor(Color.white)
//                                        .padding(.bottom, -90.0)
//                                        .padding()
                                    Spacer()
                                }
                                
                                Spacer()
                            }
                            Spacer()
                        }
                    
                                
                                ScrollView {
                                    
                                    Text("New York City, a main location for countless popular TV shows and movies, is a vibrant melting pot of cultures. Experience the dynamic energy, diverse communities, and endless entertainment options that make NYC an unforgettable travel destination.")
                                        .multilineTextAlignment(.center)
                                                                .font(.custom("Times New Roman", fixedSize: 20))
                                                            Text("Places To Visit")
                                                                .multilineTextAlignment(.center)
                                                                .font(.custom("Times New Roman", fixedSize:50))
                                                            
                                                                .padding()
                                                                .font(.custom("SignPainter", fixedSize:50))                         .fontWeight(.light)
                                   
                                    
                                    VStack{
                                        Spacer ()
                                        
                                        HStack{
                                            
                                            Text("    Central Park    ")
                                                //.font(.title2)
                                                .fontWeight(.semibold)
                                            Image("CP")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .font(.custom("Times New Roman", fixedSize: 21))
                                        }
                                        
                                        HStack{
                                            NavigationLink(destination: NiagaraFalls()) {
                                                Text(" Niagara Falls      ")
                                            
                                                  .foregroundColor(Color.black)
                                            }
//                                                Text("  Niagara Falls     ")
//
//                                                  .foregroundColor(Color.black)
                                                  //.font(.title2)
                                                  .fontWeight(.semibold)
                                              Image("nia")
                                                  .resizable(resizingMode: .stretch)
                                                  .aspectRatio(contentMode: .fit)
                                                  .font(.custom("Times New Roman", fixedSize: 21))
                                            }

                                          
                                        HStack{
                                            
                                            Text("  Times Square   ")
                                               // .font(.title2)
                                                .fontWeight(.semibold)
                                            Image("TS")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .font(.custom("Times New Roman", fixedSize: 21))
                                        }
                                        
                                        HStack{
                                            NavigationLink(destination: StatueOfLiberty()) {
                                                Text("Statue of Liberty")
                                                   // .font(.title2)
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(.black)
                                                    .font(.custom("Times New Roman", fixedSize: 21))
                                            }
                                            
                                           
                                                
                                            Image("lib")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                            
                                         
                                        }
                                        
                                        Image ("white")
                                          
                                        }
                                       
                                        
                                    }
                     // Image ("white")
                                .frame(height: 630)
                                .position(x: 180, y : 490)
                                .padding()
                        
                                }

                            }
                            
                            
                            
                        
                      //  VStack{
                            
                     //   }
                    //    .padding(.top, -30)
                        
                           
                    }
                }

        #Preview {
            newY()
        }
