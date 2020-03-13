//
//  StocksTableViewCell.swift
//  CoinCap
//
//  Created by David Fanaro on 3/12/20.
//  Copyright © 2020 David Fanaro. All rights reserved.
//

import UIKit

class CoinTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var CoinTitle: UILabel!
    @IBOutlet weak var CoinSymbol: UILabel!
    @IBOutlet weak var CoinPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func CoinDetails(title:String, symbol:String, price:String) {
        
        CoinTitle.text = title
        CoinSymbol.text = symbol
        guard let priceAsDouble = Double(price) else {return}
        if priceAsDouble > 0.009{
            let formattedPrice = String(format: "%.2f", priceAsDouble)
            CoinPrice.text = "$ " + formattedPrice
            CoinPrice.font = UIFont.systemFont(ofSize: 50)
        }else{
            let formattedPrice = String(format: "%.6f", priceAsDouble)
            CoinPrice.text = "$ " + formattedPrice
            CoinPrice.font = UIFont.systemFont(ofSize: 40)
        }
        
        
        
        
    }
    
}
