//
//  ContentView.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Float = 0.0
    @State var isPaused: Bool = false
    var body: some View {
        VStack {
            LottieView(name: "96489-top-badge-animation", loopMode: .loop, isPaused: isPaused)
            HStack {
                Button {
                    isPaused.toggle()
                } label: {
                    let systemName = isPaused ? "play.fill" : "pause.fill"
                    Image(systemName: systemName)
                }
            }
            HStack {
                Image(systemName: "sun.min")
                Slider(value: $progress) {
                    Text("Animation frame")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("100")
                }

                Image(systemName: "sun.max.fill")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
