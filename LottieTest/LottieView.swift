//
//  LottieView.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 07/03/2022.
//

import Foundation
import UIKit
import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationView: AnimationView = {
        let animationView = AnimationView()
        animationView.contentMode = .scaleAspectFit
        return animationView
    }()
    
    var isPaused: Bool
    
    init(name: String, loopMode: LottieLoopMode, isPaused: Bool) {
        self.name = name
        self.loopMode = loopMode
        self.isPaused = isPaused
    }
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        let animation = Animation.named(name)
        animationView.loopMode = loopMode
        animationView.animation = animation

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])

        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        if isPaused {
            context.coordinator.parent.animationView.pause()
        } else {
            context.coordinator.parent.animationView.play()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: LottieView
        
        init(_ parent: LottieView) {
            self.parent = parent
        }
    }
}
