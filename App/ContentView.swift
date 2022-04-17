import SwiftUI

struct ContentView: View {
    @State var isPresenting = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("Let's learn melodica with")
                        .font(Font.system(size: 30))
                    Text("MELODISSIMO")
                        .font(Font.system(size: 100))
                    Spacer()
                    Image("melodica")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Button {
                        isPresenting = true
                    } label: {
                        Text("GET STARTED")
                            .frame(width: 300, height: 100)
                            .background(.white)
                            .cornerRadius(20)
                            .font(.system(size: 30))
                        
                        NavigationLink(destination: TilesView()
                            .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                                EmptyView()
                            }
                    }
                    Spacer()
                }
            }
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
