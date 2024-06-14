//
//  key.swift
//  GeoPac
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI

struct key: View {
    var body: some View {
        ZStack {
            Image("key2")
                .resizable(resizingMode: .stretch)
               // .aspectRatio(contentMode: .fit)
            //    .scaledToFill()
                .edgesIgnoringSafeArea(.all)
               
        }
    }
}

#Preview {
    key()
}
