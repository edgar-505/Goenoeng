//
//  Profile.swift
//  Goenoeng
//
//  Created by MTMP on 09/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
        Image("MTMP")
            .resizable()
            .frame(width: 150.0, height: 150.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
        
            .shadow(radius: 10 )
        
        Text("Muhammad Tegar Mahesa").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.top, 16)
        Text("mnmtegs@gmail.com").font(.body).padding(.top, 16)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
