//
//  APICaller.swift
//  News_App
//
//  Created by RichardTurney on 08/03/2023.
//

import Foundation

final class APICaller {
    
    static let shared = APICaller()
    
    struct Constants {
        static let topHeadLinesUrl = URL(string: "https://newsapi.org/v2/top-headlines?country=gb&apiKey=f84d8f0da0c94453853771a4a689763a")
    }
    
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constants.topHeadLinesUrl else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("successful fetch")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}
