//
//  SearchNetworkManager.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import Foundation

class SearchNetworkManager {

    func buildURL(scheme: String, host: String, path: String, term: String, entity: String, limit: Int) -> URL? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = [
            URLQueryItem(name: "term", value: term),
            URLQueryItem(name: "entity", value: entity),
            URLQueryItem(name: "limit", value: String(limit))
        ]
        return components.url
    }

    func getData<T: Decodable>(type: T.Type, _ url: URL?, complition: @escaping (Result<T, SearchNetworkError>) -> Void) {
        guard let url = url else {
            let error = SearchNetworkError.unknown
            complition(Result.failure(error))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in

            if let error =  error as? URLError {
                complition(Result.failure(SearchNetworkError.urlSession(error)))
            } else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                complition(Result.failure(SearchNetworkError.errorResponse(response.statusCode)))
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(type, from: data)
                    complition(Result.success(result))
                } catch {
                    complition(Result.failure(.decoding(error as? DecodingError)))
                }
            }
        }.resume()
    }
}
