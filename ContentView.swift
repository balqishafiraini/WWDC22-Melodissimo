import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                Text("Let's learn melodica with")
                    .font(Font.system(size: 30))
                Text("PIANIKA BALQIS")
                    .font(Font.system(size: 100))
                Image("melodica")
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Button(action: {self.play1()}, label: {
                        Text("1")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play2()}, label: {
                        Text("2")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play3()}, label: {
                        Text("3")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play4()}, label: {
                        Text("4")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play5()}, label: {
                        Text("5")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play6()}, label: {
                        Text("6")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play7()}, label: {
                        Text("7")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    Button(action: {self.play8()}, label: {
                        Text("8")
                    })
                    .frame(width: 60, height: 300, alignment: .center)
                    .background(Color(UIColor.white))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .buttonStyle(WhiteTilesStyle())
                    
                    
                    
                }
            }
        }
    }
    
    func play1 () {
        let url = Bundle.main.url(forResource: "1", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play2 () {
        let url = Bundle.main.url(forResource: "2", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play3 () {
        let url = Bundle.main.url(forResource: "3", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play4 () {
        let url = Bundle.main.url(forResource: "4", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play5 () {
        let url = Bundle.main.url(forResource: "5", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play6 () {
        let url = Bundle.main.url(forResource: "6", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play7 () {
        let url = Bundle.main.url(forResource: "7", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
    func play8 () {
        let url = Bundle.main.url(forResource: "8", withExtension: "m4a")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    
}

struct WhiteTilesStyle: ButtonStyle {
   func makeBody(configuration: Self.Configuration) -> some View {
       configuration.label
           .frame(width: 60, height: 300, alignment: .center)
           .background(!configuration.isPressed ?
                           Color(UIColor.white) :
                           Color(UIColor.gray))
           .foregroundColor(!configuration.isPressed ? .black : .white)
           .cornerRadius(8)
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
