import SwiftUI
import Foundation
import AVKit

struct TriviaView: View {
    @State var isPresenting = false
    
    let player = AVPlayer(url: Bundle.main.url(forResource: "indonesiaPusaka", withExtension: "mov")!)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Spacer(minLength: 100)
                Text("Did you know?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 4)
                    )
                Spacer()
                Group {
                    Spacer()
                    Text("The tones in the quiz that you played earlier formed a melody")
                        .font(.title)
                        .fontWeight(.medium)
                    Text("from the song Indonesia Pusaka by Ismail Marzuki.")
                        .font(.title)
                        .fontWeight(.medium)
                    Spacer()
                    Text("One of The Indonesia National Song that often used")
                        .font(.title)
                        .fontWeight(.medium)
                    Text("by Indonesian students when learning Melodica.")
                        .font(.title)
                        .fontWeight(.medium)
                }
                Spacer()
                VStack {
                    Spacer()
                    Text("This is how the melody sounds like if we put it together 👇")
                        .font(.title3)
                        .fontWeight(.medium)
                    VideoPlayer(player: player)
                        .frame(width: .infinity, height: 350, alignment: .center)
                    Spacer(minLength: 50)
                    Button {
                        isPresenting = true
                    } label: {
                        Text("HOMEPAGE")
                            .frame(width: 300, height: 100)
                            .background(.white)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                            .font(.title)
                        
                        NavigationLink(destination: HomeView()
                            .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                                EmptyView()
                            }
                    }
                    Spacer()
                }
                
                
            }
            .padding()
            
        }
        .background(
            LinearGradient(colors: [
                Color("gray"),
                Color("blue")
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        )
        
    }
    
}
