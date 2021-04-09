import SwiftUI

struct MountRow: View {
    var mount: Mount
    var body: some View {
        HStack{
            Image(mount.mountPhoto)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black,lineWidth: 4))
            
            VStack (alignment: .leading, spacing: 0){
                Text(mount.mountName)
                    .font(.system(size:20))
                Text(mount.mountLocation)
                    .font(.system(size: 14))
                    .lineLimit(3)
            }.padding(.leading, 3)
        }
    }
}

struct MountRow_Previews: PreviewProvider {
    static var previews: some View {
        MountRow(mount: mounts[1]).previewLayout(.fixed(width:400, height: 100))
    }
}
