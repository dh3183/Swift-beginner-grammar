//
//  ChatListCollectionViewCell.swift
//  ChatList
//
//  Created by 한빈 on 2022/07/08.
//

import UIKit

class ChatListCollectionViewCell:
    UICollectionViewCell {
    @IBOutlet var thumnail: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var chatLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumnail.layer.cornerRadius = 25
    }
    
    func configure(_ chat: Chat)
    {
        thumnail.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = formattedDateString(dateString: chat.date)
    }
    
    func formattedDateString(dateString: String) -> String {
        
        // 2022-07-08 -> 4/1
        
        let formatter = DateFormatter()
        // google Search = ios dateforMatter
        formatter.dateFormat = "yyyy-MM-dd"
        
        // 문자열 -> date
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "M/d"
            return formatter.string(from: date)
        } else {
            return ""
        }
    }
}
