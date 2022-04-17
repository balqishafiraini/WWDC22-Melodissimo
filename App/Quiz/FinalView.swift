import SwiftUI

struct FinalView: View {
    @State var isPresenting = false
    var score: Int
    var body: some View {
        VStack {
            Text("Final score: \(score)")
                .onAppear() {
                    SaveScore(quiz: "myQuiz", score: self.score)
                }
                .font(.system(size: 50))
            
            Button {
                isPresenting = true
            } label: {
                Text("Try Again")
                    .frame(width: 300, height: 100)
                    .background(.white)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                
                NavigationLink(destination: QuizView()
                    .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                        EmptyView()
                    }
            }
        }
    }
}
