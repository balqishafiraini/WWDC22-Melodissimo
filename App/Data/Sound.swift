import Foundation
import AVFoundation
import AVKit

// format m4a
func playSound (key: String) {
    let url = Bundle.main.url(forResource: key, withExtension: "m4a")
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

//format mp3
func playBacksound (key: String) {
    let url = Bundle.main.url(forResource: key, withExtension: "mp3")
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
