//
//  LottieAPI.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 07/03/2022.
//

import Foundation
import Combine

class LottieAPI {
    
    static let shared = LottieAPI()
    
    func fetchLottieAnimations() -> AnyPublisher<FeaturedLottieResponse, Error> {
        let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/lottiefiles-test.appspot.com/o/featuredAnimations.json?alt=media&token=f6e406f5-befb-40ab-a9b0-bb0a773b09fd")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: FeaturedLottieResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
