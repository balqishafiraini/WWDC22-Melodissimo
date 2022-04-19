import SwiftUI
import AVFoundation
import Foundation

var player: AVAudioPlayer!

struct TilesView: View {
    
    @State var isPresenting = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("⚠️ If your device doesn't fit the tiles right, please swipe right/left to see the tiles that unreachable in your screen")
                    .font(.title)
                Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    Spacer()
                    ZStack {
                        HStack(spacing: 5) {
                            Button(action: {
                                playSound(key: "f1")},
                                   label: {
                                Text("4.")
                                    .font(.title)
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {
                                playSound(key: "g1")},
                                   label: {
                                Text("5.")
                                    .font(.title)
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {
                                playSound(key: "a1")},
                                   label: {
                                Text("6.")
                                    .font(.title)
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {
                                playSound(key: "b1")},
                                   label: {
                                Text("7.")
                                    .font(.title)
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            
                            
                            Group {
                                Button(action: {
                                    playSound(key: "c2")},
                                       label: {
                                    Text("1")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "d2")},
                                       label: {
                                    Text("2")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "e2")},
                                       label: {
                                    Text("3")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "f2")},
                                       label: {
                                    Text("4")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "g2")},
                                       label: {
                                    Text("5")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "a2")},
                                       label: {
                                    Text("6")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "b2")},
                                       label: {
                                    Text("7")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                            }
                            
                            Group {
                                Button(action: {
                                    playSound(key: "c3")},
                                       label: {
                                    Text("1'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "d3")},
                                       label: {
                                    Text("2'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "e3")},
                                       label: {
                                    Text("3'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "f3")},
                                       label: {
                                    Text("4'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "g3")},
                                       label: {
                                    Text("5'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "a3")},
                                       label: {
                                    Text("6'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "b3")},
                                       label: {
                                    Text("7'")
                                        .font(.title)
                                })
                                .buttonStyle(WhiteTilesStyle())
                                
                            }
                            
                            Button(action: {
                                playSound(key: "c4")},
                                   label: {
                                Text("1''")
                                    .font(.title)
                            })
                            .buttonStyle(WhiteTilesStyle())
                        }
                        
                        HStack(spacing: 5) {
                            Group {
                                Button(action: {
                                    playSound(key: "f1s")},
                                       label: {
                                    Text("4.#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "g1s")},
                                       label: {
                                    Text("5.#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                Button(action: {
                                    playSound(key: "a1s")},
                                       label: {
                                    Text("6.#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                            }
                            .offset(x: -165, y: 0)
                            
                            Group {
                                Button(action: {
                                    playSound(key: "c2s")},
                                       label: {
                                    Text("1#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "d2s")},
                                       label: {
                                    Text("2#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                            }
                            .offset(x: -100, y: 0)
                            
                            Group {
                                Button(action: {
                                    playSound(key: "f2s")},
                                       label: {
                                    Text("4#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "g2s")},
                                       label: {
                                    Text("5#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "a2s")},
                                       label: {
                                    Text("6#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                            }
                            .offset(x: -40, y: 0)
                            
                            Group {
                                Button(action: {
                                    playSound(key: "c3s")},
                                       label: {
                                    Text("1'#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "d3s")},
                                       label: {
                                    Text("2'#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                            }
                            .offset(x: 30, y: 0)
                            
                            Group {
                                Button(action: {
                                    playSound(key: "f3s")},
                                       label: {
                                    Text("4'#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "g3s")},
                                       label: {
                                    Text("5'#")
                                        .font(.title)
                                })
                                .buttonStyle(BlackTilesStyle())
                                
                                Button(action: {
                                    playSound(key: "a3s")},
                                       label: {
                                    Text("6'#")
                                        .font(.title)
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
                
                Text("If you done learning and playing with Melodica, click button below to next section")
                    .font(.title2)
                Button {
                    isPresenting = true
                } label: {
                    Text("NEXT")
                        .frame(width: 300, height: 100)
                        .background(.white)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                        .font(.title)
                    
                    NavigationLink(destination: WelcomeQuizView()
                        .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                            EmptyView()
                        }
                }
                Spacer()
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
        }
        
        .background(
            LinearGradient(colors: [
                Color("gray"),
                Color("blue")
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        )
        .onAppear(perform: {
            playSound(key: "stop")
        })
        
    }
    
}


struct TilesView_Previews: PreviewProvider {
    static var previews: some View {
        TilesView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}


