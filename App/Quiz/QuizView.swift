import SwiftUI
import Foundation

struct QuizView: View {
    
    @State var isPresenting = false
    @State var i: Int = 0
    @State var score = 0
    @State private var showActionSheet = false
    
    let timeLimit = 1.0
    
    var body: some View {
        ZStack {
            Color("blue")
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Spacer()
                        Spacer()
                        Button {
                            player.stop()
                        } label: {
                            Text("⏹")
                                .font(.system(size: 50))
                            
                        }
                        .padding()
                    }
                    if(self.i < myQuiz.count) {
                        
                        Text("Question:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        Spacer()
                        Text(myQuiz[self.i].question!)
                            .font(.largeTitle)
                            .frame(width: .infinity, height: 100, alignment: .top)
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            ZStack {
                                HStack(spacing: 5) {
                                    Group {
                                        //answer 0
                                        Button(action: {
                                            self.buttonAction(n: 0)
                                            self.showActionSheet = true
                                            playSound(key: "f1")
                                        }, label: {
                                            Text(myQuiz[self.i].options[0])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 1
                                        Button(action: {
                                            self.buttonAction(n: 1)
                                            self.showActionSheet = true
                                            playSound(key: "g1")
                                        }, label: {
                                            Text(myQuiz[self.i].options[1])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 2
                                        Button(action: {
                                            self.buttonAction(n: 2)
                                            self.showActionSheet = true
                                            playSound(key: "a1")
                                        }, label: {
                                            Text(myQuiz[self.i].options[2])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 3
                                        Button(action: {
                                            self.buttonAction(n: 3)
                                            self.showActionSheet = true
                                            playSound(key: "b1")
                                        }, label: {
                                            Text(myQuiz[self.i].options[3])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 4
                                        Button(action: {
                                            self.buttonAction(n: 4)
                                            self.showActionSheet = true
                                            playSound(key: "c2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[4])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 5
                                        Button(action: {
                                            self.buttonAction(n: 5)
                                            self.showActionSheet = true
                                            playSound(key: "d2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[5])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 6
                                        Button(action: {
                                            self.buttonAction(n: 6)
                                            self.showActionSheet = true
                                            playSound(key: "e2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[6])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 7
                                        Button(action: {
                                            self.buttonAction(n: 7)
                                            self.showActionSheet = true
                                            playSound(key: "f2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[7])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 8
                                        Button(action: {
                                            self.buttonAction(n: 8)
                                            self.showActionSheet = true
                                            playSound(key: "g2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[8])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 9
                                        Button(action: {
                                            self.buttonAction(n: 9)
                                            self.showActionSheet = true
                                            playSound(key: "a2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[9])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                    }
                                    
                                    Group {
                                        //answer 10
                                        Button(action: {
                                            self.buttonAction(n: 10)
                                            self.showActionSheet = true
                                            playSound(key: "b2")
                                        }, label: {
                                            Text(myQuiz[self.i].options[10])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 11
                                        Button(action: {
                                            self.buttonAction(n: 11)
                                            self.showActionSheet = true
                                            playSound(key: "c3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[11])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        //answer 12
                                        Button(action: {
                                            self.buttonAction(n: 12)
                                            self.showActionSheet = true
                                            playSound(key: "d3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[12])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 13
                                        Button(action: {
                                            self.buttonAction(n: 13)
                                            self.showActionSheet = true
                                            playSound(key: "e3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[13])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 14
                                        Button(action: {
                                            self.buttonAction(n: 14)
                                            self.showActionSheet = true
                                            playSound(key: "f3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[14])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 15
                                        Button(action: {
                                            self.buttonAction(n: 15)
                                            self.showActionSheet = true
                                            playSound(key: "g3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[15])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 16
                                        Button(action: {
                                            self.buttonAction(n: 16)
                                            self.showActionSheet = true
                                            playSound(key: "a3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[16])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 17
                                        Button(action: {
                                            self.buttonAction(n: 17)
                                            self.showActionSheet = true
                                            playSound(key: "b3")
                                        }, label: {
                                            Text(myQuiz[self.i].options[17])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                        
                                        //answer 18
                                        Button(action: {
                                            self.buttonAction(n: 18)
                                            self.showActionSheet = true
                                            playSound(key: "c4")
                                        }, label: {
                                            Text(myQuiz[self.i].options[18])
                                        })
                                        .buttonStyle(WhiteTilesStyle())
                                        
                                    }
                                }
                                
                                HStack {
                                    Group {
                                        //answer 19
                                        Button(action: {
                                            self.buttonAction(n: 19)
                                            self.showActionSheet = true
                                            playSound(key: "f1s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[19])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 20
                                        Button(action: {
                                            self.buttonAction(n: 20)
                                            self.showActionSheet = true
                                            playSound(key: "g1s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[18])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 21
                                        Button(action: {
                                            self.buttonAction(n: 21)
                                            self.showActionSheet = true
                                            playSound(key: "a1s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[21])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                    }
                                    .offset(x: -150, y: 0)
                                    
                                    Group {
                                        //answer 22
                                        Button(action: {
                                            self.buttonAction(n: 22)
                                            self.showActionSheet = true
                                            playSound(key: "c2s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[22])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 23
                                        Button(action: {
                                            self.buttonAction(n: 23)
                                            self.showActionSheet = true
                                            playSound(key: "d2s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[23])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                    }
                                    .offset(x: -100, y: 0)
                                    
                                    Group {
                                        //answer 24
                                        Button(action: {
                                            self.buttonAction(n: 24)
                                            self.showActionSheet = true
                                            playSound(key: "f2x")
                                        }, label: {
                                            Text(myQuiz[self.i].options[24])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 25
                                        Button(action: {
                                            self.buttonAction(n: 25)
                                            self.showActionSheet = true
                                            playSound(key: "g2s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[25])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 26
                                        Button(action: {
                                            self.buttonAction(n: 26)
                                            self.showActionSheet = true
                                            playSound(key: "a2s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[26])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                    }
                                    .offset(x: -40, y: 0)
                                    
                                    Group {
                                        //answer 27
                                        Button(action: {
                                            self.buttonAction(n: 27)
                                            self.showActionSheet = true
                                            playSound(key: "c3s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[27])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 28
                                        Button(action: {
                                            self.buttonAction(n: 28)
                                            self.showActionSheet = true
                                            playSound(key: "d3s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[28])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                    }
                                    .offset(x: 30, y: 0)
                                    
                                    Group {
                                        //answer 29
                                        Button(action: {
                                            self.buttonAction(n: 29)
                                            self.showActionSheet = true
                                            playSound(key: "f3s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[29])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 30
                                        Button(action: {
                                            self.buttonAction(n: 30)
                                            self.showActionSheet = true
                                            playSound(key: "g3s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[30])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                        
                                        //answer 31
                                        Button(action: {
                                            self.buttonAction(n: 31)
                                            self.showActionSheet = true
                                            playSound(key: "a3s")
                                        }, label: {
                                            Text(myQuiz[self.i].options[31])
                                        })
                                        .buttonStyle(BlackTilesStyle())
                                    }
                                    .offset(x: 90, y: 0)
                                }
                                .frame(width: .infinity, height: 450, alignment: .topLeading)
                            }
                            .frame(width: 1365, height:450, alignment: .top)
                            Spacer()
                            
                        }
                        Text("⚠️ If your screen doesn't fit right, scroll to see the contents that unreachable in your screen")
                            .font(.title3)
                            .padding()
                        Text("⚠️ The question changes automatically when you press the answer's tiles")
                            .font(.title3)
                            .padding()
                    }
                    else {
                        Spacer(minLength: 200)
                        Button {
                            isPresenting = true
                            playBacksound(key: "buttonClicked")
                        } label: {
                            Text("FINISH QUIZ")
                                .frame(width: 300, height: 100, alignment: .center)
                                .background(.white)
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                                .font(.title)
                            
                            NavigationLink(destination: FinalView(score: self.score)
                                .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                                    EmptyView()
                                }
                        }
                    }
                }
            }
        }
    }
    
    
    
    
    
    func buttonAction(n: Int) {
        if (myQuiz[self.i].answer == n) {
            self.score = self.score + 1
        }
        self.i = self.i + 1
    }
}
