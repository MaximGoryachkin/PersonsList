//
//  NetworkManager.swift
//  PersonsList
//
//  Created by Максим Горячкин on 22.03.2022.
//

import Foundation
import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchData(from url: String?, with comletion: @escaping (FetchData) -> Void) {
        guard let stringURL = url else { return }
        guard let url = URL(string: stringURL) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            
            do {
                let fetchData = try JSONDecoder().decode(FetchData.self, from: data)
                DispatchQueue.main.async {
                    comletion(fetchData)
                }
            } catch {
                print(error.localizedDescription)
                print("123")
            }
        }.resume()
    }
    
    func fetchImageData(from url: String?) -> Data? {
        guard let stringURL = url else { return nil }
        guard let url = URL(string: stringURL) else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        return data
    }
}
