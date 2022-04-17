import SwiftUI
import AVFoundation
import Foundation

var player: AVAudioPlayer!



struct TilesView: View {
    
    @State var isPresenting = false
    
    var keySoundArray = ["f1", "g1"]
    var textTilesArray = ["F1\n.4", "G1\n.5"]
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                ZStack {
                    HStack(spacing: 5) {     
                            Button(action: {playSound(key: "f1")}, label: {Text("F1\n.4")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "g1")}, label: {
                                Text("G1\n.5")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "a1")}, label: {
                                Text("A1\n.6")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "b1")}, label: {
                                Text("B1\n.7")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                        
                        
                        Group {
                            Button(action: {playSound(key: "c2")}, label: {
                                Text("C2\n1")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "d2")}, label: {
                                Text("D2\n2")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "e2")}, label: {
                                Text("E2\n3")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "f2")}, label: {
                                Text("F2\n4")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "g2")}, label: {
                                Text("G2\n5")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "a2")}, label: {
                                Text("A2\n6")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "b2")}, label: {
                                Text("B2\n7")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                        }
                        
                        Group {
                            Button(action: {playSound(key: "c3")}, label: {
                                Text("C3\n1'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "d3")}, label: {
                                Text("D3\n2'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "e3")}, label: {
                                Text("E3\n3'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "f3")}, label: {
                                Text("F3\n4'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "g3")}, label: {
                                Text("G3\n5'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "a3")}, label: {
                                Text("A3\n6'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                            Button(action: {playSound(key: "b3")}, label: {
                                Text("B3\n7'")
                            })
                            .buttonStyle(WhiteTilesStyle())
                            
                        }
                        
                        Button(action: {playSound(key: "c4")}, label: {
                            Text("C4\n1''")
                        })
                        .buttonStyle(WhiteTilesStyle())
                    }
                    
                    HStack(spacing: 5) {
                        Group {
                            Button(action: {playSound(key: "f1s")}, label: {
                                Text("F1#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "g1s")}, label: {
                                Text("G1#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            Button(action: {playSound(key: "a1s")}, label: {
                                Text("A1#")
                            })
                            .buttonStyle(BlackTilesStyle())
                        }
                        .offset(x: -130, y: 0)
                        
                        Group {
                            Button(action: {playSound(key: "c2s")}, label: {
                                Text("C2#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "d2s")}, label: {
                                Text("D2#")
                            })
                            .buttonStyle(BlackTilesStyle())
                        }
                        .offset(x: -80, y: 0)
                        
                        Group {
                            Button(action: {playSound(key: "f2s")}, label: {
                                Text("F2#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "g2s")}, label: {
                                Text("G2#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "a2s")}, label: {
                                Text("A2#")
                            })
                            .buttonStyle(BlackTilesStyle())
                        }
                        .offset(x: -25, y: 0)
                        
                        Group {
                            Button(action: {playSound(key: "c3s")}, label: {
                                Text("C3#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "d3s")}, label: {
                                Text("D3#")
                            })
                            .buttonStyle(BlackTilesStyle())
                        }
                        .offset(x: 25, y: 0)
                        
                        Group {
                            Button(action: {playSound(key: "f3s")}, label: {
                                Text("F3#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "g3s")}, label: {
                                Text("G3#")
                            })
                            .buttonStyle(BlackTilesStyle())
                            
                            Button(action: {playSound(key: "a3s")}, label: {
                                Text("A3#")
                            })
                            .buttonStyle(BlackTilesStyle())
                        }
                        .offset(x: 75, y: 0)
                    }
                    .frame(width: .infinity, height:400, alignment: .top)
                }
                .frame(width: 1010, height:400, alignment: .top)
                Spacer()
                
                
                Button {
                    isPresenting = true
                } label: {
                    Text("Next")
                        .frame(width: 300, height: 100)
                        .background(.white)
                        .cornerRadius(20)
                        .font(.system(size: 30))
                    
                    NavigationLink(destination: QuizView()
                        .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                            EmptyView()
                        }
                }
                Spacer()
            }
        }
    }
    


    
}
