import SwiftUI
import MusicKit

struct ContentView: View {
    var body: some View {
        VStack {
            Text("MELODISSIMO")
                .font(.system(size: 100))
            Image("melodica")
                .resizable()
                .frame(width: 1019.04, height: 250.8)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}
