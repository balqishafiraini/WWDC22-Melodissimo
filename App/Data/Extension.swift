import SwiftUI
import Foundation

struct WhiteTilesStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        
            .frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .bottom)
            .background(configuration.isPressed ? Color.gray : Color.white)
            .cornerRadius(8)
            .foregroundColor(!configuration.isPressed ? .black : .white)
    }
}


struct BlackTilesStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 70, maxHeight:250, alignment: .center)
            .background(configuration.isPressed ? Color.gray : Color.black)
            .cornerRadius(8)
            .foregroundColor(!configuration.isPressed ? .white : .black)
    }
}

struct WhiteTilesButton: View {
    var keySound: String
    var labelNot: String
    
    var body: some View {
        Button(action: {
            playSound(key: keySound)},
               label: {
            Text(labelNot)
                .font(.title)
        })
        .buttonStyle(WhiteTilesStyle())
    }
}

struct BlackTilesButton: View {
    var keySound: String
    var labelNot: String
    
    var body: some View {
        Button(action: {
            playSound(key: keySound)},
               label: {
            Text(labelNot)
                .font(.title)
        })
        .buttonStyle(BlackTilesStyle())
    }
}



var greetingArray = [
    "Hello, my name is Balqis 👋",
    "I am from Indonesia 🇮🇩",
    "In Indonesia, when we are in school,",
    "The first music instrument that we learned",
    "is Melodica (Pianika)",
    "But, that time,",
    "My parents couldn't afford to buy me Melodica.",
    "So I always borrowed it from my friend.",
    "Bacause of that,",
    "I made Melodissimo.",
    "So people who didn't have Melodica,",
    "Can learn how to play it."]

var goodbyeArray = [
    "Did you know?",
    "The tones in the quiz that you played earlier formed a melody",
    "from the song Indonesia Pusaka by Ismail Marzuki.",
    "One of The Indonesia National Song",
    "that are often played when Indonesian students learn melodica."]

struct CustomeTabIndicator: View {
     
    var count: Int
    @Binding var current: Int
     
    var body: some View {
         
        HStack {
             
            HStack {
                ForEach(0..<count,id: \.self) { index in
                     
                    ZStack {
                        //image  index start from 1..
                        if (current - 1) == index {
                            Circle()
                                .fill(Color.blue)
                        }
                        else {
                             
                            Circle()
                                .fill(Color.white)
                                .overlay(
                                    Circle()
                                        .stroke(Color.blue, lineWidth: 1.5)
                                )
                        }
                    }
                    .frame(width: 10, height: 10)
                }
            }
        }
    }
}

