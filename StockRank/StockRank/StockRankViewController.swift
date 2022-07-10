//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 한빈 on 2022/07/08.
//

import UIKit

class StockRankViewController: UIViewController {
    
    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    // Data, Presentation, Layout
    
    // Data : 어떤 Data를 쓸 건지 -> stockList
    // Presentation : 어떤 셀을 쓸 것인지
    // Layout : 셀을 어떻게 배치할 건지
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ViewController가 collectionView에게 어떤 Data를 알려 줌
        // Layout 배치에 관하여 알려 줌
        
        // self = tockRankViewController
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) // collectionView 중에 재사용 가능한 것들을 가져옴
                as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell

    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
