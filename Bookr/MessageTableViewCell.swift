//
//  MessageTableViewCell.swift
//  Bookr
//
//  Created by Kamilla Kemilly Tenorio Alves dos Santos on 3/9/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var messageImage: UIImageView!
    
    @IBOutlet weak var messageTitle: UILabel!
    
    @IBOutlet weak var messageSubtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
