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
            .frame(maxWidth: 50, maxHeight:250, alignment: .center)
            .background(configuration.isPressed ? Color.gray : Color.black)
            .cornerRadius(8)
            .foregroundColor(!configuration.isPressed ? .white : .black)
    }
}

