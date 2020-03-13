//
//  GetCrytoCoins.swift
//  CoinCap
//
//  Created by David Fanaro on 3/12/20.
//  Copyright © 2020 David Fanaro. All rights reserved.
//

import Foundation

class getCrytoCoins {
    
    let urlString = "https://api.coincap.io/v2/assets"
    
    func getCoins(completion: @escaping( Result<[CytroCoin],Error>) -> Void){
        
        guard let url = URL(string: urlString) else {fatalError()}
        
        let task = URLSession.shared.dataTask(with: url) { (data, responce, error) in
            
            guard let jsonData = data else {
                completion(.failure(error!))
                return
            }
            
            do{
                let coinData = try JSONDecoder().decode(CytroData.self, from: jsonData)
                let coins = coinData.data
                completion(.success(coins))
            }catch{
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
}
