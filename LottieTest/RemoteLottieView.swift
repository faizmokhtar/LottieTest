//
//  RemoteLottieView.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 08/03/2022.
//

import SwiftUI
import UIKit
import Lottie

struct RemoteLottieView: UIViewRepresentable {
    let animation: Lottie.Animation?

    let animationView: AnimationView = {
       let view = AnimationView()
        return view
    }()
        
    init(animation: Lottie.Animation?) {
        self.animation = animation
    }
    
    func makeUIView(context: UIViewRepresentableContext<RemoteLottieView>) -> UIView {
        let view = UIView(frame: .zero)
        animationView.play()
        animationView.contentMode = .scaleAspectFit
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<RemoteLottieView>) {
    }
}

//struct RemoteLottieView_Previews: PreviewProvider {
//    static var previews: some View {
//        RemoteLottieView(animation: Lottie.Animation(from: FeaturedLottieResponse())
//    }
//}
