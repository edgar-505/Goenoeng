import SwiftUI

struct MountList: View {
    var body: some View {
        NavigationView{
            List(mounts){ mount in
                MountRow(mount: mount)
                NavigationLink(destination: MountDetail(mount: mount)){
                    EmptyView()
                }
                
            }.navigationBarTitle(Text("Goenoeng coeg"),
                                 displayMode: .inline)
        }
    }
}

struct MountList_Previews: PreviewProvider {
    static var previews: some View {
        MountList()
    }
}
