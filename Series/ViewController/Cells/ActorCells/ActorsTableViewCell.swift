//
//  TableViewCell.swift
//  Series
//
//  Created by DAVID ANGULO CORCUERA on 3/10/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

class ActorsTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewAvatar : UIImageView!
    @IBOutlet weak var lblName : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageViewAvatar.layer.cornerRadius = imageViewAvatar.frame.height / 2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
