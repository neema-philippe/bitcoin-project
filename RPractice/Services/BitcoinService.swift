//
//  BitcoinService.swift
//  RPractice
//
//  Created by Neema Philippe on 7/11/25.
//

import Foundation

final class BitcoinService {
    func fetch(completion: @escaping (Result<String, Error>) -> Void) {
        let urlString = ""
        guard let url = URL(string: urlString) else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            
            do {
                let decoded = try JSONDecoder().decode(BitcoinResponse.self, from: data)
                completion(.success(decoded.bpi.USD.rate))
                
            } catch {
                completion(.failure(error))
            }
            
        }
    }
        
}
