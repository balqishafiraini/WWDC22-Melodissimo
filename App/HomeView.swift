import SwiftUI
import AVFoundation
import Foundation

struct HomeView: View {
    @State var isPresenting = false
    @State var animateString = true
    @State var currentIndex : Int = 0
    @State var firstString : String = ""
    @State var secondString : String = ""
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    VStack {
                        //opening animation
                        if animateString {
                            Text(firstString).font(.system(size: 35)).fixedSize()
                                .transition(AnyTransition.opacity.animation(.easeInOut(duration:0.5)))
                        }
                        if !animateString {
                            Text(secondString).font(.largeTitle).fixedSize()
                                .transition(AnyTransition.opacity.animation(.easeInOut(duration:0.5)))
                        }
                    }
                    .onAppear {
                        firstString = greetingArray[0]
                        secondString = greetingArray[1]
                        
                        _ = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { _ in
                            if (animateString) {
                                if currentIndex == greetingArray.count - 1 {
                                    self.secondString = greetingArray[0]
                                    currentIndex = 0
                                }
                                else {
                                    self.secondString = greetingArray[currentIndex+1]
                                    currentIndex += 1
                                }
                            }
                            else {
                                if currentIndex == greetingArray.count - 1 {
                                    self.firstString = greetingArray[0]
                                    currentIndex = 0
                                }
                                else {
                                    self.firstString = greetingArray[currentIndex+1]
                                    currentIndex += 1
                                }
                            }
                            animateString.toggle()
                        }
                    }
                    
                    Spacer()
                    Image("melodica")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    Spacer()
                    Button {
                        isPresenting = true
                    } label: {
                        Text("GET STARTED")
                            .frame(width: 300, height: 100)
                            .background(.white)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                            .font(.title)
                        
                        NavigationLink(destination: WelcomeTilesView()
                            .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                                EmptyView()
                            }
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient(colors: [
                Color("gray"),
                Color("blue")
                ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
            )
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear(perform: {
            playBacksound(key: "backsoundOpening")
            player.numberOfLoops = -1
        })
    }
}
