//
//  RowViewModel.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 08/03/2022.
//

import Foundation
import Lottie

class RowViewModel: ObservableObject {
    @Published var animation: Animation?
    
    init(url: URL) {
        Animation.loadedFrom(url: url, closure: { animation in
            self.animation = animation
        }, animationCache: LRUAnimationCache.sharedCache)
    }
}
