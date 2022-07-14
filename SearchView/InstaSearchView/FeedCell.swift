//
//  FeedCell.swift
//  InstaSearchView
//
//  Created by 한빈 on 2022/07/14.
//

import UIKit

class FeedCell: UICollectionViewCell {
    @IBOutlet var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        thumbnailImageView.image = nil
    }
    
    func configure(_ imageName: String)
    {
        thumbnailImageView.image = UIImage(named: imageName)
    }
    
    
}
