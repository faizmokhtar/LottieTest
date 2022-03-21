//
//  FeaturedLottieResponse.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 07/03/2022.
//

import Foundation

// MARK: - FeaturedLottieResponse
struct FeaturedLottieResponse: Codable {
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let featured: Featured
}

// MARK: - Featured
struct Featured: Codable {
    let currentPage, perPage, totalPages, from: Int
    let to, total: Int
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let id: Int
    let bgColor: BgColor
    let lottieURL: String
    let gifURL: String
    let videoURL: String
    let imageURL: String
    let createdAt, name: String
    let createdBy: CreatedBy
    
    enum CodingKeys: String, CodingKey {
        case id, bgColor
        case lottieURL = "lottieUrl"
        case gifURL = "gifUrl"
        case videoURL = "videoUrl"
        case imageURL = "imageUrl"
        case createdAt, name, createdBy
    }
}

enum BgColor: String, Codable {
    case fff = "#fff"
    case ffffff = "#FFFFFF"
}

// MARK: - CreatedBy
struct CreatedBy: Codable {
    let avatarURL: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case avatarURL = "avatarUrl"
        case name
    }
}
