import Foundation
import SwiftUI

struct WelcomeTilesView: View {
    
    @State var CurrentIndex : Int = 1
    @State var isPresenting = false
    
    var welcomeArray = ["", "Now, we will learn how to use Melodica. In the next section, there are Melodica tiles 🎹", "You can play some music there 🎵 There will be the numeral notation to help you knowing the tiles ✨", "You can search for some Melodica Music Sheet and try to play it with Melodica 🎶 Happy learning! 🤩"]
    
    var body: some View {
        VStack {
            
            //Carousel Slider
            TabView(selection: $CurrentIndex) {
                ForEach(1...3,id: \.self) {index in
                    
                    //Custom Scroll Effect
                    GeometryReader{
                        proxy -> AnyView in
                        
                        let minX = proxy.frame(in: .global).minX
                        
                        let width = UIScreen.main.bounds.width
                        
                        let progress = -minX / (width * 2)
                        
                        var scale = progress > 0 ? 1 - progress : 1 + progress
                        
                        scale = scale < 0.7 ? 0.7 : scale
                        
                        return AnyView(
                            VStack{
                                Spacer()
                                Image("tilesSlider\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                
                                Text(self.welcomeArray[index])
                                    .font(.largeTitle)
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                                    .padding()
                                
                                
                            }
                                .frame(maxHeight: .infinity, alignment: .center)
                                .scaleEffect(scale)
                        )
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            //custom tab indicator
            
            CustomeTabIndicator(count: 3, current: $CurrentIndex)
                .padding(.vertical)
                .padding(.top)
            
            VStack(spacing:15) {
                
                Button {
                    isPresenting = true
                    playBacksound(key: "buttonClicked")
                } label: {
                    Text("PLAY MELODICA")
                        .frame(width: 300, height: 100)
                        .background(.white)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                        .font(.title)
                    
                    NavigationLink(destination: TilesView()
                        .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                            EmptyView()
                        }
                }
                .padding()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [
                Color("gray"),
                Color("blue")
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
        )
    }
}
