//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 한빈 on 2022/07/08.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    // UIComponent 연결
    // UIComponent에 데이터를 업데이트 하는 Code 작성
    @IBOutlet var rankLabel: UILabel!
    @IBOutlet var companyIconImageView: UIImageView!
    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var companyPriceLabel: UILabel!
    @IBOutlet var diffLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price)) 원"
        let diffcolor: UIColor
        
        if stock.diff > 0
        {
            diffcolor = UIColor.systemRed
        }
        else
        {
            diffcolor = UIColor.systemBlue
        }
        diffLabel.textColor = diffcolor
        diffLabel.text = "\(stock.diff)%"
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        return result
    }
}
