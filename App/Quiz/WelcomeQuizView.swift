import Foundation
import SwiftUI

struct WelcomeQuizView: View {
    
    @State var CurrentIndex : Int = 1
    @State var isPresentingReady = false
    @State var isPresentingLearn = false
    
    var quizWelcomeArr = ["", "Congratulations! 🎉 Now you know how to play Melodica. In the previous section, we got help from the numeral notations. So we can easily detected which tiles that we should press 🥰", "But, what if we didn't get help from the numeral notation? 😱 In my case when I'm learning Melodica, I'm still struggling to play it if there's no numeral notation label 😫", "Now, I dare you to take a quiz to test, do you know what tiles belongs to which numeral notation? 😏 There will be 10 questions, take your time to answer it by press the tiles for the answer. Good luck! 🤩"]
    
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
                                Image("quizSlider\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                
                                Text(self.quizWelcomeArr[index])
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
                Text("Please make sure you read all instructions in the slider")
                HStack {
                    VStack {
                        Text("No, I'm not ready 😭")
                        Button {
                            isPresentingLearn = true
                            playBacksound(key: "buttonClicked")
                        } label: {
                            Text("BACK TO LEARN")
                                .frame(width: 300, height: 100)
                                .background(.white)
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                                .font(.title)
                                
                            
                            NavigationLink(destination: TilesView()
                                .navigationBarBackButtonHidden(true), isActive: $isPresentingLearn) {
                                    EmptyView()
                                }
                        }
                        
                    }
                    Spacer()
                    VStack {
                        Text("Yes, I'm ready! 💪")
                        Button {
                            isPresentingReady = true
                            playBacksound(key: "buttonClicked")
                        } label: {
                            Text("START QUIZ")
                                .frame(width: 300, height: 100)
                                .background(.white)
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                                .font(.title)
                            
                            NavigationLink(destination: QuizView()
                                .navigationBarBackButtonHidden(true), isActive: $isPresentingReady) {
                                    EmptyView()
                                }
                        }
                    }
                }.padding()
            }
            .onAppear(perform: {
                playBacksound(key: "backsoundOpening")
                player.numberOfLoops = -1
            })
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

struct WelcomeQuizView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeQuizView()
    }
}
