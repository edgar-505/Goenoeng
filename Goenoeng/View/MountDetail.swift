//
//  MountDetail.swift
//  Goenoeng
//
//  Created by MTMP on 09/04/21.
//

import SwiftUI

struct MountDetail: View {
    var mount: Mount
    
    var body: some View{
        ScrollView{
            VStack(spacing: 10){
                Spacer(minLength: 20)
                Image(mount.mountPhoto)
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 4))
                    .shadow(radius: 10 )
                
                Spacer()
                Text("____________________________________")
                
                HStack{
                    Text("Nama Gunung")
                        .bold()
                    Spacer()
                    Text(mount.mountName)
                        .bold()
                    
                }
                HStack{
                    Text("Tinggi Gunung")
                        .bold()
                    Spacer()
                    Text(mount.mountHeight)
                        .bold()
                    
                }
                HStack{
                    Text("Tipe Gunung")
                        .bold()
                    Spacer()
                    Text(mount.mountType)
                        .bold()
                    
                }
                HStack{
                    Text("Lokasi Gunung")
                        .bold()
                    Spacer()
                    Text(mount.mountLocation)
                        .bold()
                    
                }
            }
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16 ,trailing: 16))
    }
}


struct MountDetail_Previews: PreviewProvider {
    static var previews: some View {
        MountDetail(mount: mounts[0])
    }
}
