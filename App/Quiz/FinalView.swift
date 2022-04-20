import SwiftUI
import Foundation

struct FinalView: View {
    
    @State var isPresentingQuiz = false
    @State var isPresentingLearn = false
    @State var isPresentingAnswer = false
    var score: Int
    
    var body: some View {
        VStack {
            Spacer()
            Text("Wow! You did a great job! 🥳")
                .font(.largeTitle)
            Spacer()
            Text("Your final score is: \(score)/10")
                .onAppear() {
                    SaveScore(quiz: "myQuiz", score: self.score)
                }
                .font(.system(size: 50))
            Spacer(minLength: 150)
            HStack {
                VStack {
                    Text("I want to learn the tiles again ✊")
                    Button {
                        isPresentingLearn = true
                        playBacksound(key: "buttonClicked")
                    } label: {
                        Text("LEARN")
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
                    Text("I want to do the quiz again 👊")
                    Button {
                        isPresentingQuiz = true
                        playBacksound(key: "buttonClicked")
                    } label: {
                        Text("QUIZ")
                            .frame(width: 300, height: 100)
                            .background(.white)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                            .font(.title)
                        
                        NavigationLink(destination: QuizView()
                            .navigationBarBackButtonHidden(true), isActive: $isPresentingQuiz) {
                                EmptyView()
                            }
                    }
                }
            }
            Spacer()
            Text("Do you want to see the answer?📄")
            Button {
                isPresentingAnswer = true
                playBacksound(key: "buttonClicked")
            } label: {
                Text("SEE ANSWER")
                    .frame(width: 300, height: 100)
                    .background(.white)
                    .foregroundColor(.blue)
                    .cornerRadius(20)
                    .font(.title)
                
                NavigationLink(destination: TriviaView()
                    .navigationBarBackButtonHidden(true), isActive: $isPresentingAnswer) {
                        EmptyView()
                    }
            }
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(colors: [
            Color("gray"),
            Color("blue")
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        )
        .onAppear(perform: {
            playBacksound(key: "applauseBacksound")
        })
    }
}
