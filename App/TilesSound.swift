import Foundation
import AVFoundation

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
