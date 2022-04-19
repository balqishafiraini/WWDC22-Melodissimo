import SwiftUI

struct FinalView: View {
    @State var isPresentingQuiz = false
    @State var isPresentingLearn = false
    var score: Int
    var body: some View {
        VStack {
            Text("Wow! You already did a great job! 🥳")
                .font(.largeTitle)
            Text("Your final score is: \(score)")
                .onAppear() {
                    SaveScore(quiz: "myQuiz", score: self.score)
                }
                .font(.system(size: 50))
            
            VStack(spacing:15) {
                HStack {
                    VStack {
                        Text("I want to do the quiz again 👊")
                            .font(.title)
                        Button {
                            isPresentingLearn = true
                        } label: {
                            Text("QUIZ")
                                .frame(width: 450, height: 100)
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
                        Text("I want to learn the tiles again ✊")
                            .font(.title)
                        Button {
                            isPresentingQuiz = true
                        } label: {
                            Text("LEARN")
                                .frame(width: 450, height: 100)
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
            }
            .padding()
            
        }
    }
}
