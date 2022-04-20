import Foundation
import AVFoundation
import AVKit

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
