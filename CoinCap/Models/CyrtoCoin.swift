//
//  CyrtoCoin.swift
//  CoinCap
//
//  Created by David Fanaro on 3/12/20.
//  Copyright © 2020 David Fanaro. All rights reserved.
//

import Foundation


struct CytroData: Decodable {
    var data:[CytroCoin]
}

struct CytroCoin: Decodable {
    var id: String
    var rank: String
    var symbol: String
    var name: String
    var supply: String
    var maxSupply:String?
    var marketCapUsd: String
    var volumeUsd24Hr: String
    var priceUsd: String
    var changePercent24Hr: String
    var vwap24Hr: String?
}
