//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by 한빈 on 2022/07/12.
//

import UIKit

class ResultCell: UICollectionViewCell {
    @IBOutlet var ThumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        ThumbnailImageView.image = nil
        
    }
    
    func configure(_ imageName: String)
    {
        ThumbnailImageView.image = UIImage(named: imageName)
    }
}
