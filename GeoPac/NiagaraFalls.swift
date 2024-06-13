//
//  NiagaraFalls.swift
//  NewYorkPage
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct NiagaraFalls: View {
    var body: some View {
        ZStack{
                 
                       Image("nia")
                           .resizable(resizingMode: .stretch)
                           .aspectRatio(contentMode: .fit)
                           .ignoresSafeArea()
                       Spacer()
                       
                       HStack {
                           Text("Niagara Falls")
                               .font(.system(size: 44))
                               .fontWeight(.black)
                               .foregroundColor(Color.white)
                               //.padding(.bottom, -90.0)
                               .padding()
                       
                           Spacer()
                       }
                   }
                  
                   
                   ScrollView {
                       VStack{
                           
                           VStack{
                               Text("💦♿️📸💲🧗‍♂️🚶‍♂️")
                                   .font(.largeTitle)
                               
                               Text("Experience the awe-inspiring Niagara Falls, famous for its powerful cascades and breathtaking views. Enjoy a thrilling Maid of the Mist boat ride, explore scenic trails, and take in the stunning sights that make this destination unforgettable.")
                                   .font(.title3)
                                   .fontWeight(.medium)
                                   .foregroundColor(Color.black)
                                   .multilineTextAlignment(.center)
                                   .padding()
                               
                               Text("What to pack:")
                                   .font(.title)
                                   .fontWeight(.bold)
                               
                               Text("- Pancho / Waterproof Jacket")
                                   .font(.headline)
                               
                               Text("- Waterproof Phone Case")
                                   .font(.headline)
                               
                               Text("- Comfortable Shoes")
                                   .font(.headline)
                               
                               Text("- Bring light snacks")
                                   .font(.headline)
                               Text("- Waterproof Camera")
                                   .font(.headline)
                               Text("")
                               
                               Text("💲   Adult : $28.25 ")
                                   .font(.title2)
                               Text("Children : $17.75")
                               
                                   .font(.title2)
                               
                               Text("♿️ - Handicap accesible on the Maid of the Mist")
                                   .font(.title2)
                                   .multilineTextAlignment(.center)
                               
                               Text("👨‍👩‍👧‍👦 - Family/Kid friendly")
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
                   .position(x: 180, y : 260)
                   .padding()
               }
           }


#Preview {
    NiagaraFalls()
}
