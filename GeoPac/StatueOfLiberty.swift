//
//  FrenchAlps.swift
//  TravelAppPractice
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct StatueOfLiberty: View {
    var body: some View {
        
        ZStack{
          
                Image("lib")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
                
                HStack {
                    Text("Statue of Liberty")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                       // .padding(.bottom, -90.0)
                        .padding()
                
                    Spacer()
                }
            }
            Spacer()
            
            ScrollView {
                VStack{
                    
                    VStack{
                        Text("💲♿️👨‍👩‍👧‍👦🏛️")
                            .font(.largeTitle)
                        
                        Text("Liberty Island is home to a beautiful park, an innovative museum, and America's most iconic symbol of promise and possibility. As you explore the grounds, take in Lady Liberty from different angles noting her design details and how her appearance changes with the light.")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .padding()
                        
                        Text("What to pack:")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("- Camera (camera bags not authorized)")
                            .font(.headline)
                        
                        Text("- Mobile phone")
                            .font(.headline)
                        
                        Text("- Water (in a clear plastic container)")
                            .font(.headline)
                        
                        Text("- Any necessary medication")
                            .font(.headline)
                        
                        Text("")
                        
                        Text("💲 - Ferry fee: Children under 4 are free, children ages 4–12 are $12, adults are $24.50, seniors and those 62 and older are $18, and pedestal access is $24.80")
                            .font(.title2)
                        
                        Text("♿️ - Handicap accesible")
                            .font(.title2)
                        
                        Text("👨‍👩‍👧‍👦 - Family/Kid friendly")
                            .font(.title2)
                        
                        Text("🏛️ - Historic place")
                            .font(.title2)
                        
                    }
                    
                    VStack{
                        Image("white")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                    }
                                       
                }
            }
            .frame(height: 750)
            .position(x: 190, y : 260)
            .padding()
        }
    }


#Preview {
    StatueOfLiberty()
}
