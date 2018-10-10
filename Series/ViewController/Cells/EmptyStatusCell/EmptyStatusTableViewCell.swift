//
//  EmptyStatusTableViewCell.swift
//  Series
//
//  Created by DAVID ANGULO CORCUERA on 10/10/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

protocol EmptyStatusTableViewCellDelegate: class{
    func emptyStatusTableViewCellDidPressBack(cell:
    EmptyStatusTableViewCell)
}


class EmptyStatusTableViewCell: UITableViewCell {
    @IBOutlet var emptytableviewcell: UIView!
     @IBOutlet weak var btn_login: UIButton!
    weak var delegate:EmptyStatusTableViewCellDelegate?
    override func awakeFromNib() {
        
        super.awakeFromNib()
        emptytableviewcell.layer.cornerRadius = 20
        btn_login.layer.cornerRadius = 10
        // Initialization code
    }
    @IBAction func backButtonPressed(){
        delegate?.emptyStatusTableViewCellDidPressBack(cell:
            self)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
