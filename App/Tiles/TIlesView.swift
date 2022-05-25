import SwiftUI
import AVFoundation
import Foundation

var player: AVAudioPlayer!

struct TilesView: View {
    
    @State var isPresenting = false
    
    var body: some View {
        ZStack {
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
                    Spacer()
                    Text ("Melodica Tiles")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Text("⚠️ If your screen doesn't fit right, scroll to see the contents that unreachable in your screen")
                        .font(.title3)
                        .padding()
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false) {
                        Spacer()
                        ZStack {
                            //white tiles button
                            HStack(spacing: 5) {
                                Group {
                                    WhiteTilesButton (keySound: "f1", labelNot: "4.")
                                    WhiteTilesButton (keySound: "g1", labelNot: "5.")
                                    WhiteTilesButton (keySound: "a1", labelNot: "6.")
                                    WhiteTilesButton (keySound: "b1", labelNot: "7.")
                                }
                                
                                Group {
                                    WhiteTilesButton (keySound: "c2", labelNot: "1")
                                    WhiteTilesButton (keySound: "d2", labelNot: "2")
                                    WhiteTilesButton (keySound: "e2", labelNot: "3")
                                    WhiteTilesButton (keySound: "f2", labelNot: "4")
                                    WhiteTilesButton (keySound: "g2", labelNot: "5")
                                    WhiteTilesButton (keySound: "a2", labelNot: "6")
                                    WhiteTilesButton (keySound: "b2", labelNot: "7")
                                }
                                
                                Group {
                                    WhiteTilesButton (keySound: "c3", labelNot: "1'")
                                    WhiteTilesButton (keySound: "d3", labelNot: "2'")
                                    WhiteTilesButton (keySound: "e3", labelNot: "3'")
                                    WhiteTilesButton (keySound: "f3", labelNot: "4'")
                                    WhiteTilesButton (keySound: "g3", labelNot: "5'")
                                    WhiteTilesButton (keySound: "a3", labelNot: "6'")
                                    WhiteTilesButton (keySound: "b3", labelNot: "7'")
                                }
                                
                                WhiteTilesButton (keySound: "c4", labelNot: "1''")
                            }
                            
                            //black tiles button
                            HStack(spacing: 5) {
                                Group {
                                    BlackTilesButton (keySound: "f1s", labelNot: "4.#")
                                    BlackTilesButton (keySound: "g1s", labelNot: "5.#")
                                    BlackTilesButton (keySound: "a1s", labelNot: "6.#")
                                }
                                .offset(x: -165, y: 0)
                                
                                Group {
                                    BlackTilesButton (keySound: "c2s", labelNot: "1#")
                                    BlackTilesButton (keySound: "d2s", labelNot: "2#")
                                }
                                .offset(x: -100, y: 0)
                                
                                Group {
                                    BlackTilesButton (keySound: "f2s", labelNot: "4#")
                                    BlackTilesButton (keySound: "g2s", labelNot: "5#")
                                    BlackTilesButton (keySound: "a2s", labelNot: "6#")
                                }
                                .offset(x: -40, y: 0)
                                
                                Group {
                                    BlackTilesButton (keySound: "c3s", labelNot: "1'#")
                                    BlackTilesButton (keySound: "d3s", labelNot: "2'#")
                                }
                                .offset(x: 30, y: 0)
                                
                                Group {
                                    BlackTilesButton (keySound: "f3s", labelNot: "4'#")
                                    BlackTilesButton (keySound: "g3s", labelNot: "5'#")
                                    BlackTilesButton (keySound: "a3s", labelNot: "6'#")
                                }
                                .offset(x: 90, y: 0)
                                
                            }
                            .frame(width: .infinity, height: 450, alignment: .topLeading)
                            
                        }
                        .frame(width: 1366, height:450, alignment: .top)
                        Spacer(minLength: 100)
                    }
                    
                    Text("Done learning? Go to next section")
                        .font(.title2)
                    Button {
                        isPresenting = true
                        playBacksound(key: "buttonClicked")
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
                    
                }
                .frame(width: .infinity, height: .infinity, alignment: .center)
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
    
}

