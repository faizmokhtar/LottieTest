//
//  RemoteLottieViewModel.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 08/03/2022.
//

import Foundation

struct RemoteLottieViewModel: Identifiable {
    let id: Int
    let bgColor: BgColor
    let lottieURL: String
    let gifURL: String
    let videoURL: String
    let imageURL: String
    let createdAt, name: String
    
    init(result: Result) {
        self.id = result.id
        self.bgColor = result.bgColor
        self.lottieURL = result.lottieURL
        self.gifURL = result.gifURL
        self.videoURL = result.videoURL
        self.imageURL = result.imageURL
        self.createdAt = result.createdAt
        self.name = result.name
    }
}
