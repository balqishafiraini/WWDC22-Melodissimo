//
//  SwiftUIView.swift
//  
//
//  Created by Balqis on 17/04/22.
//

import SwiftUI

struct QuizView: View {
    
    @State var isPresenting = false
    
    //number of question
    @State var i: Int = 0
    
    //score
    @State var score = 0
    @State private var showActionSheet = false
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                if(self.i < myQuiz.count) {
                    
                    Text(myQuiz[self.i].question!)
                        .font(.system(size: 50))
                    
                    HStack {
                        
                        Group {
                            //answer 0
                            Button(action: {
                                self.buttonAction(n: 0)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[0])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 1
                            Button(action: {
                                self.buttonAction(n: 1)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[1])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 2
                            Button(action: {
                                self.buttonAction(n: 2)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[2])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 3
                            Button(action: {
                                self.buttonAction(n: 3)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[3])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 4
                            Button(action: {
                                self.buttonAction(n: 4)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[4])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 5
                            Button(action: {
                                self.buttonAction(n: 5)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[5])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 6
                            Button(action: {
                                self.buttonAction(n: 6)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[6])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 7
                            Button(action: {
                                self.buttonAction(n: 7)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[7])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 8
                            Button(action: {
                                self.buttonAction(n: 8)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[8])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 9
                            Button(action: {
                                self.buttonAction(n: 9)
                                self.showActionSheet = true
                                
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
                                
                            }, label: {
                                Text(myQuiz[self.i].options[10])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 11
                            Button(action: {
                                self.buttonAction(n: 11)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[11])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            //answer 12
                            Button(action: {
                                self.buttonAction(n: 12)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[12])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 13
                            Button(action: {
                                self.buttonAction(n: 13)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[13])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 14
                            Button(action: {
                                self.buttonAction(n: 14)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[14])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 15
                            Button(action: {
                                self.buttonAction(n: 15)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[15])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 16
                            Button(action: {
                                self.buttonAction(n: 16)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[16])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 17
                            Button(action: {
                                self.buttonAction(n: 17)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[17])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            //answer 18
                            Button(action: {
                                self.buttonAction(n: 18)
                                self.showActionSheet = true
                                
                            }, label: {
                                Text(myQuiz[self.i].options[18])
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                        }
                    }
                    .frame(width: 1010, height:400, alignment: .top)
                    
                } else {
                    FinalView(score: self.score)
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
