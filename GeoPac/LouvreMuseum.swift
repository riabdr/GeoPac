//
//  LouvreMuseum.swift
//  TravelAppPractice
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI

struct LouvreMuseum: View {
    var body: some View {
        
        ZStack{
          
                Image("LouvreMuseum")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
                
                HStack {
                    Text("Louvre Museum")
                        .font(.system(size: 44))
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        //.padding(.bottom, -90.0)
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
                        
                        Text("As one of the largest, oldest, and grandest museums in the world, the Louvre hosts a treasure trove of artworks spanning diverse cultures and periods of history. ")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .padding()
                        
                        Text("What to pack:")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("- Size restrictions: The Louvre permits only small bags and backpacks measuring 55cm x 35cm x 20cm or smaller")
                            .font(.headline)
                        
                        Text("- Type of bags: Transparent bags are encouraged to expedite security checks")
                            .font(.headline)
                        
                        Text("- Prohibited items: Sharp objects, weapons, aerosols, and any hazardous materials are strictly forbidden. Umbrellas with pointed tips and selfie sticks are also prohibited.")
                            .font(.headline)
                        
                        Text("- You may bring your food and beverages to the Louvre")
                            .font(.headline)
                        
                        Text("")
                        
                        Text("💲 - General admission= €22")
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
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        
                    }
                                       
                }
            }
            .frame(height: 750)
            .position(x: 190, y : 260)
            .padding()
        }
    }


#Preview {
    LouvreMuseum()
}
