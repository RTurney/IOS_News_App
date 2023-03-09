//
//  APIRespone.swift
//  News_App
//
//  Created by RichardTurney on 08/03/2023.
//

import Foundation

struct APIResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let source: Source
    let title: String
    let url: String
    let publishedAt: String
}

struct Source: Codable {
    let Name: String
}
