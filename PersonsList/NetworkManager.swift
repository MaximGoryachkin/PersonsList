//
//  NetworkManager.swift
//  PersonsList
//
//  Created by Максим Горячкин on 22.03.2022.
//

import Foundation

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
            }
        }.resume()
    }
}
